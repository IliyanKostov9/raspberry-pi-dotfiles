# Pihole troubleshooting

## Process `pihole-FTL` not found

```bash
sudo lsof -i :53
sudo kill -9 1042
docker-compose up -d
```

## Cannot resolve to host `github.com`  (e.g no internet)

```bash
sudo systemctl disable systemd-resolved.service
sudo rm /etc/resolv.conf
sudo vim /etc/resolv.conf
nameserver 208.67.222.222
```
