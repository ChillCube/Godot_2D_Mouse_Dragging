# Godot Smooth Movement

This project adds a new node called "SmoothMovement", which is attached to the node you want to move. 
The movement will then be handled by the SmoothMovement node. 

## Installation
To add this to your project, use the following commands:
```bash
git init && \
git submodule add https://github.com/ChillCube/Godot_SmoothMovement.git addons/MouseDragging2D && \
git submodule update --init --recursive --remote
```

> [!WARNING]
> If you use submodules in your project, and don't want these to update to the latest version, run this instead:
> ```bash
> git init && \
> git submodule add https://github.com/ChillCube/Godot_SmoothMovement.git addons/MouseDragging2D && \
> git submodule update --init --recursive --remote addons/SmoothMovement
> ```

## Deinstallation
### Linux
Run this in the root of your godot project:
```bash
git rm -f addons/SmoothMovement && \
rm -rf .git/modules/addons/MouseDragging2D && \
rmdir addons 2>/dev/null
```
