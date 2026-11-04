#!/bin/bash
set -e
cd "$(dirname "$0")/src/OpenSTA"
mkdir -p build && cd build
cmake -DCUDD_DIR=/usr/local ..
make -j$(nproc)
sudo make install
