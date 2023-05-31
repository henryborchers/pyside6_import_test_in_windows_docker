ARG PYTHON_VERSION="3.11"
FROM python:${PYTHON_VERSION}

COPY requirements.txt c:/source/
ARG PYSIDE_VERSION="6.4.3"
RUN python -m pip install pip --upgrade ; python -m pip install -r c:/source/requirements.txt; python -m pip install PySide6==${Env:PYSIDE_VERSION}
COPY tests c:/source/tests
WORKDIR c:/source
CMD ["python", "-m", "pytest"]
