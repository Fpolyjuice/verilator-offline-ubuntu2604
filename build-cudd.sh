#!/bin/bash
set -e
cd "$(dirname "$0")/src"
tar xvfz cudd-3.0.0.tar.gz
cd cudd-3.0.0
./configure --prefix=/usr/local
make -j$(nproc)
sudo make install
