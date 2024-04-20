xbps-install -Su
xbps-install -S void-repo-nonfree
xbps-install -S sway swaylock swayidle firefox NetworkManager neovim intel-ucode seatd Waybar base-devel git mesa-dri intel-media-driver intel-video-accel lynis foot apparmor nheko telegram-desktop xdg-desktop-portal-wlr wireguard-tools tlp irqbalance thunderbird ansible flatpak PrismLauncher torbrowser-launcher tlp-rdw powertop gocryptfs steam gnome-keyring slurp nnn libreoffice linux-mainline linux-mainline-headers android-tools android-udev-rules android-file-transfer-linux docker rsync pipewire wireplumber ferium wl-clipboard light just

ln -s /etc/sv/NetworkManager/ /var/service/
ln -s /etc/sv/dbus/ /var/service/
ln -s /etc/sv/seatd/ /var/service/
ln -s /etc/sv/irqbalance/ /var/service/

chsh -s /usr/bin/fish root
chsh -s /usr/bin/fish antonix

cp environment /etc/environment
cp locale.conf /etc/locale.config
cp grub /etc/default/grub
cp sysctl.conf /etc/sysctl.conf

xbps-reconfigure glibc-locales

usermod -aG _seatd antonix
usermod -aG adbusers antonix

ln -s /usr/bin/nvim /bin/nv
