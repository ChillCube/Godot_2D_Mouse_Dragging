# Godot_2D_Mouse_Dragging API Reference
Generated on: Mon Mar  9 01:56:11 AM CET 2026

A Godot Addon

---

## Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **mouse_area** | `` | `-` | Area that defines where the mouse can drag the object |
| **mouse_left_input** | `` | `"mb_left"` | Define what input event is used in the game for clicking |
| **parent_node** | `` | `get_parent()` | Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here. |
| **cursor** | `` | `null` | To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work. |
| **on** | `` | `true` | To turn this node on and off |
| **smooth_movement** | `` | `true` | Turn this on if you want smooth movement (requires the smooth movement addon) |

## Signals
| Signal | Description |
| :--- | :--- |
| **object_placed** | is used to communicate to other nodes that the object was put down after it was grabbed |
| **object_picked_up** | is used to communicate to other nodes that the object was picked up by the mouse |

