from setuptools_pybind11 import setup, PyBindModule

setup(
    [
        PyBindModule(
            module_name="glfw",
            source_dir=".",
            dep_bin_prefixes=["third-party/glfw/src"],
            inc_dirs=[("third-party/glfw/include", "")],
        )
    ]
)
