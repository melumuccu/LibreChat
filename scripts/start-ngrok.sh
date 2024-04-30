#!/bin/bash

# .env ファイルから環境変数を読み込む
set -a
source .env
set +a

# NGROK_ALLOW_EMAILS を ", "(カンマ+スペース)区切りで処理してコマンドオプションに追加
IFS=', ' read -ra ADDR <<< "$NGROK_ALLOW_EMAILS"
for i in "${ADDR[@]}"; do
    ALLOW_EMAILS+="--oauth-allow-email $i "
done

# ngrok コマンドの実行
docker run -it --rm --network='host' --env-file .env ngrok/ngrok http --domain=$NGROK_DOMAIN_LIBRECHAT 3080