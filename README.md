# Notes

# How to: adjust raspberry pi fan temp

1. Edt in `config.txt`

```bash
sudo vim /boot/firmware/config.txt
```

2. Change this toml config:

```toml
[all] 
dtoverlay=gpio-fan,gpiopin=14,temp=65000
```


## Additional commands

- check temperature
```bash
/usr/bin/vcgencmd measure_temp
```
