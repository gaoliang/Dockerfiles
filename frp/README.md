### BUILD
docker build . --build-arg FRP_VERSION=v0.37.0 -t frp

### RUN

```bash
# server mode
docker run -d --network=host -e MODE=server -v /path/to/frps.ini:/etc/frp/frps.ini:ro gaoliang/frp

# client mode
docker run -d --network=host -e MODE=client -v /path/to/frpc.ini:/etc/frp/frpc.ini gaoliang/frp
```