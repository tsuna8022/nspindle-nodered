#!/bin/sh
set -e

# 第一次启动时，把 seed 拷贝到 /data
if [ ! -f /data/flows.json ]; then
  echo "Seeding /data from /seed ..."
  mkdir -p /data
  cp -R /seed/* /data/
fi

# Render 会提供 $PORT 环境变量
PORT_TO_USE=${PORT:-1880}

# 启动 Node-RED
exec node-red -u /data -p ${PORT_TO_USE}
