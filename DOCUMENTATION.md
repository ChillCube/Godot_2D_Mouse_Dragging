#  API Reference
Generated on: 2026-03-09


---


## Class: DragWithMouse
**Inherits:** [`Node`](https://docs.godotengine.org/en/stable/classes/class_node.html)

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.

### Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **mouse_area** | ` Area2D` | `-` | Area that defines where the mouse can drag the object |
| **mouse_left_input** | ` String` | `"mb_left"` | Define what input event is used in the game for clicking |
| **parent_node** | ` Node2D` | `get_parent()` | Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here. |
| **cursor** | ` Node2D` | `null` | To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work. |
| **on** | ` bool` | `true` | To turn this node on and off |
| **smooth_movement** | ` bool` | `true` | Turn this on if you want smooth movement (requires the smooth movement addon) |

### Signals
| Signal | Description |
| :--- | :--- |
| **object_placed** | is used to communicate to other nodes that the object was put down after it was grabbed |
| **object_picked_up** | is used to communicate to other nodes that the object was picked up by the mouse |

---
