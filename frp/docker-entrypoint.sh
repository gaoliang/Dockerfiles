#!/bin/sh

frpc_config=/frpc.ini
frps_config=/frps.ini

[ -f $frpc_config ] && echo "run in client mode" && frpc -c $frpc_config
[ -f $frps_config ] && echo "run in server mode" && frps -c $frps_config
