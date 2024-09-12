class_name GameInputEvents
extends Node

static func movement_input() -> float:
	var direction: float = Input.get_axis("ui_left", "ui_right")
	return direction

static func jump_input() -> bool:
	var jump_input: bool = Input.is_action_just_pressed("ui_accept")
	return jump_input

static func shoot_input() -> bool:
	var shoot_input: bool = Input.is_action_just_pressed("ui_page_up")
	return shoot_input

static func shoot_up_input() -> bool:
	var shoot_input: bool = Input.is_action_just_pressed("ui_page_up")
	var up_input: bool = Input.is_action_pressed("ui_up")
	return up_input && shoot_input

static func crouch_input() -> bool:
	var crouch_input: bool = Input.is_action_pressed("ui_down")
	return crouch_input

static func fall_input() -> bool:
	var fall_input: bool = Input.is_action_pressed("ui_home")
	return fall_input

static func wall_cling_input() -> bool:
	var wall_cling_input: bool = Input.is_action_pressed("ui_end")
	return wall_cling_input
