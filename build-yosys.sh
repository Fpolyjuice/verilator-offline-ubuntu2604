#!/bin/bash
set -e
cd "$(dirname "$0")/src/yosys"
make -j$(nproc) ENABLE_PYOSYS=0   # 规避 Ubuntu 26.04 上 pyosys 的潜在冲突
sudo make install
