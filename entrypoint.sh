#!/bin/sh -l

python3 -m pip install --user --upgrade setuptools wheel
python3 setup.py sdist bdist_wheel
python3 -m pip install --user --upgrade twine

TWINE_USERNAME="$INPUT_USER" TWINE_PASSWORD="$INPUT_TOKEN" \
  exec twine upload dist/*
