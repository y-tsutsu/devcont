#!/bin/bash

WORK=$(cd $(dirname $0) && pwd)

mkdir ~/include
git clone https://github.com/atcoder/ac-library.git -b v1.5.1 ~/include/ac-library

sudo ln -s $WORK/../.template/debug_print.hpp ~/include/.

python -m pip install --upgrade pip
python -m pip install git+https://github.com/not522/ac-library-python
python -m pip install atcoder-tools
python -m pip install markupsafe==2.0.1

sudo ln -s $WORK/actgen.sh /usr/local/bin/.

echo 'alias g="g++ -std=c++20 -O2"' >> ~/.zshrc
echo 'alias gd="g++ -std=c++20 -O2 -DLOCAL"' >> ~/.zshrc
