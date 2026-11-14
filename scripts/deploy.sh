#!/usr/bin/env bash
# 在部署目标服务器上执行：拉取新镜像并重建服务
set -euo pipefail

TARGET_DIR="${1:-/opt/app}"
cd "$TARGET_DIR"

docker compose pull
docker compose up -d --remove-orphans
docker image prune -f
