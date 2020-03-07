#!/bin/sh -l

python -m pip install --user --upgrade setuptools wheel
python3 setup.py sdist bdist_wheel
python3 -m pip install --user --upgrade twine

TWINE_USERNAME="$INPUT_USERNAME"
TWINE_PASSWORD="$INPUT_PASSWORD"
exec twine upload dist/*
