## Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.
extends Node
class_name DragWithMouse

#region EXPORT VARIABLES

@export_group("REQUIRED SETTINGS")

@export var mouse_area : Area2D ## Area that defines where the mouse can drag the object
@export var mouse_left_input : String = "mb_left" ## Define what input event is used in the game for clicking
@export var parent_node : Node2D = get_parent(); ## Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here.

@export_group("Settings")
@export var cursor : Node2D = null ## To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work.
@export var on : bool = true; ## To turn this node on and off

@export_group("Smooth Movement")
@export var smooth_movement : bool = true; ## Turn this on if you want smooth movement (requires the smooth movement addon)

#endregion

#region MAIN LOGIC
var mouse_touching : bool = false;
var mouse_just_grabbed : bool = false;
var mouse_pressing : bool = false;
var moving : bool = false;
var target_position : Vector2
var rotation_target : float;

signal object_placed ## is used to communicate to other nodes that the object was put down after it was grabbed
signal object_picked_up ## is used to communicate to other nodes that the object was picked up by the mouse

static func initialize(user : Node, _mouse_area : Area2D, _mouse_left_input : String) -> DragWithMouse:
	var new_dragger = DragWithMouse.new()
	new_dragger.mouse_area = _mouse_area
	new_dragger.mouse_left_input = _mouse_left_input
	new_dragger.parent_node = user as Node2D
	user.add_child(new_dragger)
	return new_dragger

func _ready() -> void:
	target_position = get_parent().global_position;
	if not mouse_area:
		push_error("DragWithMouse: 'mouse_area' is not assigned. Assign an Area2D in the inspector.")
		return
	mouse_area.connect("mouse_entered", _mouse_entered)
	mouse_area.connect("mouse_exited", _mouse_exited)
	mouse_area.connect("body_entered", _body_entered)
	mouse_area.connect("body_exited", _body_exited)

func _process(delta: float) -> void:
	if on and (mouse_just_grabbed or moving):
		if cursor != null: #if the cursor is a node
			if cursor.pressing_L and mouse_touching:
				if not moving:
					emit_signal("object_picked_up")
				moving = true;
			if not cursor.pressing_L:
				if moving:
					emit_signal("object_placed")
				moving = false;
			if moving:
				target_position = cursor.global_position
		else: # if no cursor is defined
			if mouse_pressing and mouse_touching:
				if not moving:
					emit_signal("object_picked_up")
				moving = true;
			if not mouse_pressing:
				if moving:
					emit_signal("object_placed")
				moving = false;
			if moving:
				target_position = get_viewport().get_mouse_position()
		if smooth_movement and parent_node.has_node("SmoothMovement"):
			var smooth_mover : Node = parent_node.get_node("SmoothMovement")
			smooth_mover.global_target_position = target_position
	mouse_just_grabbed = false

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_pressing = true
			mouse_just_grabbed = true
		else:
			mouse_pressing = false

func _mouse_entered() -> void:
	mouse_touching = true;

func _mouse_exited() -> void:
	mouse_touching = false;

func _body_entered(body) -> void:
	if cursor != null:
		if body == cursor:
			mouse_touching = true;

func _body_exited(body) -> void:
	if cursor != null:
		if body == cursor:
			mouse_touching = false;

#endregion
