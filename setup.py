#!/usr/bin/env python
# -*- encoding: utf-8 -*-

from setuptools import find_packages
from setuptools import setup


REQUIREMENTS = [i.strip() for i in open("requirements.txt").readlines()]
TEST_REQUIREMENTS = [i.strip() for i in open("tests/requirements.txt").readlines()]


setup(
    name="",
    version="1.0.0",
    description="",
    long_description="",
    platforms=["Linux"],
    author="",
    author_email="email@email.com",
    url="https://url.com",
    packages=find_packages(),
    # https://docs.python.org/3/distutils/setupscript.html#listing-whole-packages
    # package_dir={"": "src"},
    include_package_data=False,
    zip_safe=True,
    classifiers=[
        # complete classifier list: http://pypi.python.org/pypi?%3Aaction=list_classifiers
    ],
    python_requires=">=3.9",
    setup_requires=["setuptools", "wheel"],
    install_requires=REQUIREMENTS,
    extras_require={
        "test": TEST_REQUIREMENTS,
    }
)
