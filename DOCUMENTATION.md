# Godot_2D_Mouse_Dragging API Reference
Generated on: 2026-03-09

Godot Addon

### 📦 Dependencies
| Addon | Repository |
| :--- | :--- |
| Godot_SmoothMovement | [Link](https://github.com/ChillCube/Godot_SmoothMovement) |

---

## Class: DragWithMouse
**Inherits:** [`Node`](https://docs.godotengine.org/en/stable/classes/class_node.html)

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.

### Signals
| Signal | Description |
| :--- | :--- |
| **object_placed** | is used to communicate to other nodes that the object was put down after it was grabbed |
| **object_picked_up** | is used to communicate to other nodes that the object was picked up by the mouse |

---

