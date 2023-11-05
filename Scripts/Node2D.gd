extends Node2D

var prev_scene = preload("res://puff_ball.tscn")
var next_scene = preload("res://minecraft_block.tscn")
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_RIGHT:
			get_tree().change_scene_to_packed(next_scene)
		if event.pressed and event.keycode == KEY_LEFT:
			get_tree().change_scene_to_packed(prev_scene)
