#!/usr/bin/bash
export NEZHA_SERVER="a.holoy.dpdns.org:36958"
export NEZHA_PORT="36958"  #当端口设置为443时，自动开启TLS,无需设置
export NEZHA_KEY="NwxKJwM9UKRCX5TBPaBm0IrjNCSyflif"

chmod +x server
if [ "$NEZHA_PORT" = "443" ]; then
  NEZHA_TLS="--tls"
else
  NEZHA_TLS=""
fi
nohup ./server -s ${NEZHA_SERVER}:${NEZHA_PORT} -p ${NEZHA_KEY} ${NEZHA_TLS} > /dev/null 2>&1 &

tail -f /dev/null
