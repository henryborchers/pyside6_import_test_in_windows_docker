# README

This is a minimal example for testing PySide6 in a Windows Docker container. 

Note: This is **NOT** for testing Linux containers running in Windows.

## Example

To test with Python version 3.11 and PySide6 version 6.4.3

- First build container

    `docker build --build-arg PYTHON_VERSION=3.11  --build-arg PYSIDE_VERSION=6.4.3 -t pysidetest:311-643 .`

- Then run container

    `docker run pysidetest:311-643`
