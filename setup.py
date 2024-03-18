from setuptools_pybind11 import setup, PyBindModule

setup(
    [
        PyBindModule(
            module_name="pyglfw",
            source_dir=".",
            dep_bin_prefixes=["third-party/glfw/src"],
            data_dirs=[("third-party/glfw/include", "include")],
        )
    ]
)
