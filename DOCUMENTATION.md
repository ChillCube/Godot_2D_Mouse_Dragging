# Godot_2D_Mouse_Dragging API Reference
Generated on: Mon Mar  9 12:46:14 AM CET 2026

A Godot Addon

---

## Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **mouse_area** | `` | `-` | No description provided. |
| **mouse_left_input** | `` | `"mb_left"` | No description provided. |
| **parent_node** | `` | `get_parent()` | No description provided. |
| **cursor** | `` | `null` | No description provided. |
| **on** | `` | `true` | No description provided. |
| **smooth_movement** | `` | `true` | No description provided. |
| **mouse_touching** | `` | `false` | No description provided. |
| **mouse_just_grabbed** | `` | `false` | No description provided. |
| **mouse_pressing** | `` | `false` | No description provided. |
| **moving** | `` | `false` | No description provided. |
| **target_position** | `` | `-` | No description provided. |
| **rotation_target** | `` | `-` | No description provided. |
| **change** | `` | `(target_position - parent_node.global_position) * delta` | No description provided. |
| **smooth_mover** | `` | `parent_node.get_node("SmoothMovement")` | No description provided. |
| **change** | `` | `(target_position - parent_node.global_position) * delta` | No description provided. |

## Methods
| Method | Returns | Description |
| :--- | :--- | :--- |
| **_ready()** | `void` | No description provided. |
| **_process()** | `void` | No description provided. |
| **_unhandled_input()** | `void` | No description provided. |
| **_mouse_entered()** | `void` | No description provided. |
| **_mouse_exited()** | `void` | No description provided. |
| **_body_entered()** | `void` | No description provided. |
| **_body_exited()** | `void` | No description provided. |

## Signals
| Signal | Description |
| :--- | :--- |
| **object_placed** | No description provided. |
| **object_picked_up** | No description provided. |
