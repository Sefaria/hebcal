from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="py_hebcal",
    sources=["py_hebcal.pyx"],
    libraries=["hebcal"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="py_hebcal",
    ext_modules=cythonize([examples_extension])
)
