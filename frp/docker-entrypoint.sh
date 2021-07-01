#!/bin/sh

frpc_config=/etc/frp/frpc.ini
frps_config=/etc/frp/frps.ini

# TODO: auto detect ini file
if [ -z $MODE ]; then
  MODE=server
fi

echo "run in ${MODE} mode"

case $FRP_MODE in
  client)
    frpc -c frpc_config
    exit 0
    ;;
  server)
    frps -c frps_config
    exit 0
    ;;
esac