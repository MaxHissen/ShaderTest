extends Node2D

var animation_player:AnimationPlayer
var balloon_sprite:Sprite2D
var balloon_reference_sprite:Sprite2D

var colour_filter:Sprite2D
var colour_map:Sprite2D

var time_spent = 0.5

	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	animation_player = $AnimationPlayer
	
	balloon_sprite = $balloon_sprite
	
	colour_filter = $colour_filter
	colour_map = $colour_map

	animation_player.play("idle")

func _process(_delta):
	colour_filter.material.set_shader_parameter("width", colour_map.hframes)
	colour_filter.material.set_shader_parameter("height", colour_map.vframes)
	colour_filter.material.set_shader_parameter("fx", colour_map.frame_coords.x)
	colour_filter.material.set_shader_parameter("fy", colour_map.frame_coords.y)
	colour_filter.material.set_shader_parameter("reference_texture", colour_map.texture)
	colour_filter.material.set_shader_parameter("reference_texture", colour_map.texture)
	
	
	
	if Input.is_action_just_pressed("space"):
		colour_map.frame_coords.x = (colour_map.frame_coords.x + 1) % 2
