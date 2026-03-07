# Godot 2D Mouse Dragging

This project is used for adding the ability to drag 2D nodes with the mouse. 

## Installation
To add this to your project, use the following commands:
```bash
clone-gd-addon https://github.com/ChillCube/Godot_2D_Mouse_Dragging.git
```

> [!WARNING]
> If you use submodules in your project, and don't want these to update to the latest version, run this instead:
> ```bash
> git init && \
> git submodule add https://github.com/ChillCube/Godot_2D_Mouse_Dragging.git addons/MouseDragging2D && \
> git submodule update --init --recursive --remote addons/MouseDragging2D
> ```

## Deinstallation
### Linux
Run this in the root of your godot project:
```bash
git rm -f addons/MouseDragging2D && \
rm -rf .git/modules/addons/MouseDragging2D && \
rmdir addons 2>/dev/null
```
## For Developers
### Push Changes
If you've made changes to the submodule and want to push these changes to the project, copy paste this into the terminal at the root of the directory:
```bash
echo "Enter your commit message:"; \
read COMMIT_MSG; \
set ROOT_DIR (git rev-parse --show-toplevel); \
set SUB_PATH "addons/MouseDragging2D"; \
cd "$ROOT_DIR/$SUB_PATH"; and \
git checkout main; and \
git pull origin main --rebase; and \
git add .; and \
git commit -m "$COMMIT_MSG" --allow-empty; and \
git push origin main; and \
cd "$ROOT_DIR"; and \
git add "$SUB_PATH"; and \
git commit -m "Ref(submodule): $COMMIT_MSG" --allow-empty; and \
git push origin (git branch --show-current)
```

It will prompt you to enter the name of the commmit. Enter the name after copy pasting it.
