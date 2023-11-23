extends StaticBody3D

# const COIN_SCENE := preload("res://Player/Coin/Coin.tscn")
# const COINS_COUNT := 5
# const DESTROYED_BOX_SCENE := preload("res://Box/DestroyedBox.tscn")

# @onready var _destroy_sound: AudioStreamPlayer3D = $DestroySound
# @onready var _collision_shape: CollisionShape3D = $CollisionShape3d
var mesh: MeshInstance3D

@export var BlankMaterial: Material
@export var ColourMaterial: Material

func _ready():
	mesh = get_parent()
	if BlankMaterial != null:
		mesh.set_surface_override_material(0, BlankMaterial)


func damage(_impact_point: Vector3, _force: Vector3):	
	# var destroyed_box := DESTROYED_BOX_SCENE.instantiate()
	# get_parent().add_child(destroyed_box)
	# destroyed_box.global_position = global_position
	
	# _collision_shape.set_deferred("disabled", true)
	# _destroy_sound.pitch_scale = randfn(1.0, 0.1)
	# _destroy_sound.play()
	# await _destroy_sound.finished
	# queue_free()
	
	mesh.set_surface_override_material(0, ColourMaterial)
	print("ovrided")
