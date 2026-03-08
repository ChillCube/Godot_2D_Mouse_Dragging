# Godot_2D_Mouse_Dragging API Reference
Generated on: Sun Mar  8 03:30:55 AM CET 2026

---

## DragWithMouse

**Inherits:** 

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.

### object_placed()
**Event:** Signal

is used to communicate to other nodes that the object was put down after it was grabbed

### object_picked_up()
**Event:** Signal

is used to communicate to other nodes that the object was picked up by the mouse

1 mouse_area

Area that defines where the mouse can drag the object

1 mouse_left_input = ``"mb_left"``

Define what input event is used in the game for clicking

1 parent_node = ``get_parent()``

Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here.

1 cursor = ``null``

To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work.

1 on = ``true``

To turn this node on and off

1 smooth_movement = ``true``

Turn this on if you want smooth movement (requires the smooth movement addon)


