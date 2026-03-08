# Godot_2D_Mouse_Dragging API Reference
Generated: Sun Mar  8 02:52:23 AM CET 2026

---


.. _DragWithMouse:

=============
DragWithMouse
=============

**Inherits:** 

Use this node to make any object in the game draggeable, by simply adding it to the object you want to drag around. The object that will be dragged around will be the parent of the node. You can disable rotation in the "Settings", as well as set a custom cursor using a node.


Property Index
==============

.. list-table::
   :header-rows: 1

   * - Type
     - Name
     - Default value
   * - :ref:`Area2D <Area2D>`
     - :ref:`mouse_area <DragWithMouse_mouse_area>`
     - ````
   * - :ref:`String <String>`
     - :ref:`mouse_left_input <DragWithMouse_mouse_left_input>`
     - ``"mb_left"``
   * - :ref:`Node2D <Node2D>`
     - :ref:`parent_node <DragWithMouse_parent_node>`
     - ``get_parent()``
   * - :ref:`Node2D <Node2D>`
     - :ref:`cursor <DragWithMouse_cursor>`
     - ``null``
   * - :ref:`bool <bool>`
     - :ref:`on <DragWithMouse_on>`
     - ``true``
   * - :ref:`bool <bool>`
     - :ref:`smooth_movement <DragWithMouse_smooth_movement>`
     - ``true``
   




Signal Descriptions
===================


.. _DragWithMouse_object_placed:

object_placed\(\)
-----------------

is used to communicate to other nodes that the object was put down after it was grabbed


.. _DragWithMouse_object_picked_up:

object_picked_up\(\)
--------------------

is used to communicate to other nodes that the object was picked up by the mouse



Property Descriptions
=====================


.. _DragWithMouse_mouse_area:

:ref:`Area2D <Area2D>` mouse_area
---------------------------------

Area that defines where the mouse can drag the object


.. _DragWithMouse_mouse_left_input:

:ref:`String <String>` mouse_left_input = ``"mb_left"``
-------------------------------------------------------

Define what input event is used in the game for clicking


.. _DragWithMouse_parent_node:

:ref:`Node2D <Node2D>` parent_node = ``get_parent()``
-----------------------------------------------------

Parent node that determines the position of the object being dragged (can be the same as sprite). Will assume it to be the nodes parent if nothing is put in here.


.. _DragWithMouse_cursor:

:ref:`Node2D <Node2D>` cursor = ``null``
----------------------------------------

To define the cursor position if the game uses a custom cursor (for example for controller support). Will default to the mouse position if nothing is defined. The cursor must have a "pressing_L" (boolean) variable, which is true if the left mouse button is pressed, for this to work.


.. _DragWithMouse_on:

:ref:`bool <bool>` on = ``true``
--------------------------------

To turn this node on and off


.. _DragWithMouse_smooth_movement:

:ref:`bool <bool>` smooth_movement = ``true``
---------------------------------------------

Turn this on if you want smooth movement (requires the smooth movement addon)


Class Reference
===============



.. toctree::
   :maxdepth: 2
   :caption: Contents:

   DragWithMouse