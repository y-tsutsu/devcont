#!/bin/bash

if [ $2 = "cpp" ]; then
    atcoder-tools gen $1 --workspace . --lang $2 --template ./.template/main.cpp
elif [ $2 = "python" ]; then
    atcoder-tools gen $1 --workspace . --lang $2 --template ./.template/main.py
else
    atcoder-tools gen $1 --workspace . --lang $2
fi
