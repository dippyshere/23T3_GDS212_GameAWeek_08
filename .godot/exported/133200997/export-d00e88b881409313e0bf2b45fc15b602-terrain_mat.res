RSRC                    ShaderMaterial            ��������                                            7      resource_local_to_scene    resource_name    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    script    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength 
   normalize    color_ramp    noise    render_priority 
   next_pass    shader "   shader_parameter/wall_edge_offset    shader_parameter/cliff_scale -   shader_parameter/grass_patch_pattern_sampler #   shader_parameter/wall_mask_sampler &   shader_parameter/cliff_albedo_sampler &   shader_parameter/grass_albedo_sampler %   shader_parameter/dirt_albedo_sampler #   shader_parameter/cliff_orm_sampler #   shader_parameter/grass_orm_sampler "   shader_parameter/dirt_orm_sampler &   shader_parameter/cliff_normal_sampler &   shader_parameter/grass_normal_sampler %   shader_parameter/dirt_normal_sampler !   shader_parameter/triplanar_scale "   shader_parameter/triplanar_offset %   shader_parameter/triplanar_sharpness 
      Shader 2   res://Environment/Terrain/terrain_shader.gdshader ��������
   Texture2D W   res://Environment/Terrain/Textures/voronoi_rock_cliff/voronoi_rock_cliff_heightmap.png �%L��
   Texture2D T   res://Environment/Terrain/Textures/voronoi_rock_cliff/voronoi_rock_cliff_albedo.png �Ց3M��D
   Texture2D 8   res://Environment/Terrain/Textures/grass_mat_albedo.png .P��f�\
   Texture2D 9   res://Environment/Terrain/Textures/ground_mat_albedo.png t-S$�y�l
   Texture2D Q   res://Environment/Terrain/Textures/voronoi_rock_cliff/voronoi_rock_cliff_orm.png Jg�xm?`
   Texture2D 5   res://Environment/Terrain/Textures/grass_mat_orm.png "��-�-m
   Texture2D T   res://Environment/Terrain/Textures/voronoi_rock_cliff/voronoi_rock_cliff_normal.png �#�"�\R
   Texture2D 8   res://Environment/Terrain/Textures/grass_mat_normal.png �բ��_
   Texture2D 9   res://Environment/Terrain/Textures/ground_mat_normal.png ��g�4      local://FastNoiseLite_dkxv0 
         local://NoiseTexture2D_jhgfj C
         local://ShaderMaterial_ifl30 ~
         FastNoiseLite                                NoiseTexture2D             #                      ShaderMaterial    $          %          &             '        �?(   )   ffffff�?)            *            +            ,            -            .            /            0            1            2            3         	   4      ���>���>���>5                  6        �@      RSRC