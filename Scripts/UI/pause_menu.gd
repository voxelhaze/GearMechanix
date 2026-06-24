extends Control
@onready var panel: Panel = $Panel

var is_paused:bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	panel.hide()
	



func _on_options_button_button_down() -> void:
	get_tree().paused = true
	panel.show()



func _on_resume_button_button_down() -> void:
	panel.hide()
	get_tree().paused = false


func _on_restart_button_button_down() -> void:
	get_tree().reload_current_scene()
