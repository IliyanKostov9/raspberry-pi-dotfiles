sudo apt install -y samba

sudo mkdir -p /media/share
sudo adduser pi-ftp
sudo smbpasswd -a pi-ftp

sudo vim /etc/samba/smb.conf

sudo systemctl restart smbd
sudo systemctl restart nmbd


