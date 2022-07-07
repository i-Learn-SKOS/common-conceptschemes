# Tools

Note: the tools below run in a Linux environment's bash shell and are tested on a Ubuntu 20.04 LTS distribution.

## 1 - Installation

### 1.1 - Dependencies
* python3 (3.6 ... 3.8)
* Java (OpenJDK version 14 volstaat)

### 1.2 - Python virtual environment
Install a virtual environment (named `virtualenv`) below this directory and install the required Python modules in it:
```shell
python3 -m venv virtualenv
source virtualenv/bin/activate
python -V
python -m pip install -r requirements.txt 
deactivate
```

### 1.3 - YARRRML
Download the right versie of the YARRRML parser (https://github.com/RMLio/yarrrml-parser.git) in this directory.
This script does it for you:
```shell
./download-yarrrml.sh
```

### 1.4 - RML mapper
Download the right version of the RML mapper (https://github.com/RMLio/rmlmapper-java) in this directory.

We use v4.15.0, so download https://github.com/RMLio/rmlmapper-java/releases/download/v4.15.0/rmlmapper-4.15.0-r361-all.jar.

## 2 - Activation
Execute this before running any next script. It activates the Python virtual environment:
```shell
source virtualenv/bin/activate
```

## 3 - Make the output
Save all input files in `../input`.

Export the .xlsx file to a .csv. Export parameters:
- character set: UTF-8
- separator: ,
- string delimiter: ""

Execute:
```shell
./make.sh
```
