# custom_ctypes
This repository is to try to fix discovery of libraries with Python's ctypes module. It changes the behavior of find_library to return
absolute paths to shared objects rather than just the names. 

## Add new version 
```bash
bash copy-and-patch.sh 3.12
```

## Quick test
```bash
module load python/3.13 
PYTHONPATH=$PYTHONPATH:$PWD/lib/python${EBVERSIONPYTHON::-2}/site-packages/ python -c "from ctypes.util import find_library; from ctypes import CDLL; import os; find_library('mpi'); print(CDLL(find_library('mpi')));"
```


