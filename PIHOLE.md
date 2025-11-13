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


# Ad block lists

- https://blocklistproject.github.io/Lists/abuse.txt
- https://blocklistproject.github.io/Lists/ads.txt
- https://blocklistproject.github.io/Lists/crypto.txt
- https://blocklistproject.github.io/Lists/drugs.txt
- https://blocklistproject.github.io/Lists/fraud.txt
- https://blocklistproject.github.io/Lists/gambling.txt
- https://blocklistproject.github.io/Lists/malware.txt
- https://blocklistproject.github.io/Lists/phishing.txt
- https://blocklistproject.github.io/Lists/ransomware.txt
- https://blocklistproject.github.io/Lists/scam.txt
- https://blocklistproject.github.io/Lists/tracking.txt
- https://blocklistproject.github.io/Lists/tiktok.txt
