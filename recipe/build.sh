#!/bin/bash
export CPP_INCLUDE_PATH=$PREFIX/include
export CXX_INCLUDE_PATH=$PREFIX/include
export CPLUS_INCLUDE_PATH=$PREFIX/include
export LD_LIBRARY_PATH=$PREFIX/lib
if [ -n "$OSX_ARCH" ]; then
  # https://github.com/zeroc-ice/ice-packaging/blob/v3.6.5/ice/pypi/setup.py#L49-L51
  export ARCHFLAGS="-arch $OSX_ARCH"
fi
$PYTHON -m pip install . --ignore-installed --no-deps -vv
