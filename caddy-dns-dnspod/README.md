### what's this
caddy build with [`🔌 dns.providers.dnspod`](https://github.com/caddy-dns/dnspod). 

### BUILD
```bash
docker build . --build-arg CADDY_VERSION=2.4.3 -t caddy-dns-dnspod
```

### RUN
see https://hub.docker.com/_/caddy, and replce image `caddy` to `gaoliang/caddy-dns-dnspod`