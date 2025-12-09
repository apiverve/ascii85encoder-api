from setuptools import setup, find_packages

setup(
    name='apiverve_ascii85encoder',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='ASCII85 Encoder is a tool for encoding and decoding data using ASCII85 (also known as Base85) encoding. It supports both standard and btoa formats for efficient binary-to-text encoding with better compression than Base64.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
