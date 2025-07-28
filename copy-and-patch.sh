#!/bin/bash

set -e

version=${1:?missing python version}

if [[ ! "$version" =~ ^[0-9]\.[0-9]+$ ]]; then
    echo "Invalid version format, expected format: X.YY (e.g. 3.13)"
    exit 1
fi

module load python/$version

mkdir -vp lib/python${version}/site-packages

cp -rv $EBROOTPYTHON/lib/python*/ctypes lib/python${version}/site-packages

patch -p 3 lib/python${version}/site-packages/ctypes/util.py < abspath.patch
