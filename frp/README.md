### what's this
A fast reverse proxy to help you expose a local server behind a NAT or firewall to the internet.

https://github.com/fatedier/frp

https://registry.hub.docker.com/r/gaoliang/frp/

### BUILD

```bash
docker build . --build-arg FRP_VERSION=v0.37.0 -t frp
```

### RUN

```bash
# server mode, config file must be mount to /frps.ini
docker run -d --network=host -v /path/to/frps.ini:/frps.ini gaoliang/frp

# client mode, config file must be mount to /frpc.ini
docker run -d --network=host -v /path/to/frpc.ini:/frpc.ini gaoliang/frp
```

### supported tags:
```
latest
v0.37.0
```