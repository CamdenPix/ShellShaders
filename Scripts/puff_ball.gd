extends Node3D

var next_scene = preload("res://minecraft_block.tscn")
var prev_scene = preload("res://straw_roof.tscn")
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_RIGHT:
			get_tree().change_scene_to_packed(next_scene)
		if event.pressed and event.keycode == KEY_LEFT:
			get_tree().change_scene_to_packed(prev_scene)
