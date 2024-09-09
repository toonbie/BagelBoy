extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	playerData.health = 3
	get_tree().change_scene_to_file("res://Main/main.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
