# custom_ctypes
This repository is to try to fix discovery of libraries with Python's ctypes module. It changes the behavior of find_library to return
absolute paths to shared objects rather than just the names. 
