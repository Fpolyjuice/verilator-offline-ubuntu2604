bash
#!/bin/bash
set -e
cd "$(dirname "$0")/debs"
sudo dpkg -i *.deb
# 如遇依赖告警，使用本地修复（不联网）
sudo apt-get install -f --no-download -y
