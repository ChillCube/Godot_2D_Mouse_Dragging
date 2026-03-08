# Godot_2D_Mouse_Dragging API Reference
Generated on: Sun Mar  8 03:39:17 AM CET 2026

---

## DragWithMouse

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.

   

## Signals
### object_placed()
**Event:** Signal

is used to communicate to other nodes that the object was put down after it was grabbed

### object_picked_up()
**Event:** Signal

is used to communicate to other nodes that the object was picked up by the mouse

## Properties
### mouse_area
**Type:** Area2D

Area that defines where the mouse can drag the object

### mouse_left_input
**Type:** String
**Default:** "mb_left"

Define what input event is used in the game for clicking

### parent_node
**Type:** Node2D
**Default:** get_parent()

Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here.

### cursor
**Type:** Node2D
**Default:** null

To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work.

### on
**Type:** bool
**Default:** true

To turn this node on and off

### smooth_movement
**Type:** bool
**Default:** true

Turn this on if you want smooth movement (requires the smooth movement addon)

