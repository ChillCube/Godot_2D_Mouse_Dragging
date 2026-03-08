# Godot_2D_Mouse_Dragging API Reference
Generated on: Sun Mar  8 03:18:12 AM CET 2026

## Description
DragWithMouse

**Inherits:** 

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.

     - Name

     - Default value

     - `1`

     - ````

     - `1`

     - ``"mb_left"``

     - `1`

     - ``get_parent()``

     - `1`

     - ``null``

     - `1`

     - ``true``

     - `1`

     - ``true``


---

### object_placed()
**Event:** Signal

is used to communicate to other nodes that the object was put down after it was grabbed

### object_picked_up()
**Event:** Signal

is used to communicate to other nodes that the object was picked up by the mouse

### mouse_area
**Type:** 1

Area that defines where the mouse can drag the object

### mouse_left_input
**Type:** 1
**Default:** `"mb_left"`

Define what input event is used in the game for clicking

### parent_node
**Type:** 1
**Default:** `get_parent()`

Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here.

### cursor
**Type:** 1
**Default:** `null`

To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work.

### on
**Type:** 1
**Default:** `true`

To turn this node on and off

### smooth_movement
**Type:** 1
**Default:** `true`

Turn this on if you want smooth movement (requires the smooth movement addon)


