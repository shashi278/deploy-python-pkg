from setuptools import setup

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(
    name="Example-PKG",
    version="0.0.1",
    packages=["example_pkg"],
    package_data={"example_pkg": ["*.py"],},
    # metadata to display on PyPI
    author="Shashi Ranjan",
    author_email="shashiranjankv@gmail.com",
    description="An example pkg to test my github action",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/shashi278/deploy-python-pkg",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    
    python_requires=">=3.6",
)
