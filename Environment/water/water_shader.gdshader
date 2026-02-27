shader_type spatial;
render_mode depth_draw_opaque, cull_back, shadows_disabled;

uniform sampler2D main_noise_sampler : hint_normal;
uniform sampler2D caustic_sampler : hint_normal, filter_linear;

uniform vec3 water_color : source_color = vec3(0.1, 0.4, 0.6);
uniform vec3 highlight_color : source_color = vec3(0.8, 0.9, 1.0);

uniform float wave_height = 0.15;
uniform float wave_speed = 0.5;
uniform float water_texture_scale = 20.0;
uniform float fresnel_power = 3.0;

varying vec2 base_offset;

float get_noise(vec2 offset){
	return texture(main_noise_sampler, offset).x;
}

void vertex() {

	base_offset = (UV * 0.5) + TIME * wave_speed * 0.05;

	float h = get_noise(base_offset) * wave_height;
	VERTEX.y += h;

	float h_x = get_noise(base_offset + vec2(0.05, 0.0)) * wave_height;
	float h_z = get_noise(base_offset + vec2(0.0, 0.05)) * wave_height;

	vec3 normal = normalize(vec3(
		h - h_x,
		0.1,
		h - h_z
	));

	NORMAL = normal;
}

float fresnel(vec3 normal, vec3 view, float power){
	return pow(1.0 - clamp(dot(normalize(normal), normalize(view)), 0.0, 1.0), power);
}

void fragment() {
	float caustic = texture(
		caustic_sampler,
		UV * water_texture_scale + TIME * 0.1
	).x;

	float fres = fresnel(NORMAL, VIEW, fresnel_power);

	vec3 base_col = water_color;

	base_col += caustic * 0.15;

	base_col = mix(base_col, highlight_color, fres * 0.6);

	ALBEDO = base_col;

	ROUGHNESS = 0.85;
	SPECULAR = 0.5;

	ALPHA = smoothstep(0.6, 0.3, distance(UV, vec2(0.5)));
}