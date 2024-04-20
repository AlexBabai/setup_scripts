
wget https://mirror.cachyos.org/cachyos-repo.tar.xz
tar xvf cachyos-repo.tar.xz && cd cachyos-repo
./cachyos-repo.sh

pacman -Syu
pacman -S prelockd memavaild nvim-vim fish irqbalance i2pd traefik docker docker-compose certbot coturn qemu-guest-agent

pacman -S cachyos-dnscrypt-proxy uksmd-git linux-cachyos-server bpftune-git

chsh -s /usr/bin/fish root
useradd -m -G users,sudo -s /usr/bin/fish antonix

cp environment /etc/environment

systemctl enable prelockd.service
systemctl enable memavaild.service
systemctl enable irqbalance.service
systemctl enable qemu-ga
systemctl enable --now fstrim.timer

ln -s /usr/bin/nvim /bin/nv
