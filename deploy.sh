#!/bin/bash
set -e

SERVER="root@160.202.47.107"
REMOTE_PATH="/var/www/psjhl"

cd "$(dirname "$0")"

echo "==> 构建..."
typbook build
cp -r assets site/

echo "==> 修正部署路径 → /psjhl ..."
find site -name '*.html' -exec sed -i '' 's|href="/|href="/psjhl/|g' {} \;

echo "==> 上传到 $SERVER:$REMOTE_PATH ..."
rsync -avz --delete site/ "$SERVER:$REMOTE_PATH/"

echo "==> 完成: http://ducia.site/psjhl"
