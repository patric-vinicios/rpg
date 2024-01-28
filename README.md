# RPG Api

## Prometheus & Grafana Configuration

As Docker runs differently between the S.Os, it is used `network_mode: host` to Docker access the machine localhost in Linux.
In Windows and Mac, you could remove it and add `docker.internal.host` in `prometheus.yml`. This is for development purpose and will not work in production environment outside of Docker Desktop for Windows and Mac.

You can also try `docker.for.mac.localhost` for Mac and `docker.for.win.localhost` for Windows.
