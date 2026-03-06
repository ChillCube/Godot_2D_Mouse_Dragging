# Godot 2D Mouse Dragging

This project is used for adding the ability to drag 2D nodes with the mouse. 

## Installation
To add this to your project, use the following commands:
```bash
git init && \
git submodule add https://github.com/ChillCube/Godot_2D_Mouse_Dragging.git addons/MouseDragging2D && \
git submodule update --init --recursive --remote
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
echo "Enter your commit message:" && \
read COMMIT_MSG && \
ROOT_DIR=$(git rev-parse --show-toplevel) && \
SUB_PATH="addons/MouseDragging2D" && \
cd "$ROOT_DIR/$SUB_PATH" && \
git checkout main && \
git pull origin main --rebase && \
git add . && \
git commit -m "$COMMIT_MSG" && \
git push origin main && \
cd "$ROOT_DIR" && \
git pull origin main --rebase && \
git add "$SUB_PATH" && \
git commit -m "Ref(submodule): $COMMIT_MSG" && \
git push origin main
```
