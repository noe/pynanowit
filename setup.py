from setuptools import setup

setup(
    name='pynanowit',
    packages=['pynanowit'],
    include_package_data=True,
    install_requires=['flask'],
    setup_requires=['pytest-runner'],
    tests_require=['pytest'],
)
