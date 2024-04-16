#!/bin/bash

# This runs in gitbash since batch is garbage

home=`dirname $0 | xargs realpath`

PY_VERSIONS="3.7.16 3.8.16 3.9.16 3.10.11 3.11.3 3.12.1"

PY_ROOT="/c/Python/bin/Python-"

cd $home/..

for ver in $PY_VERSIONS
do
    echo "Building $ver"
    rm -rf build
    mkdir build
    ${PY_ROOT}${ver}/python.exe -m build --wheel
done

echo "Done"
