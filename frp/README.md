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