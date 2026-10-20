from setuptools import setup, find_packages

setup(
    name='apiverve_ascii85encoder',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='ASCII85 Encoder encodes text into Base85 strings or decodes existing ASCII85 payloads back to plain text. Each request returns the converted output with original and processed character counts, while paid plans add custom formats and compression ratios.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/ascii85encoder?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
