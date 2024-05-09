# No Longer Maintained
This was originally split off from my other project [py-imgui-redux](https://github.com/alagyn/py-imgui-redux), but this lead to more shenanigans and hacks than it was worth (and eventually it broke). Therefore, py-glfw-redux has been merged back into py-imgui-redux.


# py-glfw-redux
GLFW wrapper for Python made with PyBind11

### Install
`pip install py-glfw-redux`

### Usage
This wrapper aims to be as close to the original API as possible.
Exceptions:
- Functions have lost the `glfw` prefix as this is already in the module name
- Functions that returned pointers to arrays now return list-like objects
- Functions that took pointers to output variables as arguments now return tuples


See [py-imgui-redux's examples](https://github.com/alagyn/py-imgui-redux/blob/main/examples/window_boilerplate.py)
for a real use case

