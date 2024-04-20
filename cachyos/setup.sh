pacman -Syu
pacman -S --needed prelockd memavaild preload uresourced nvim-vim fish irqbalance cachyos-dnscrypt-proxy uksmd-git linux-cachyos-server bpftune-git tlp amd-ucode

pacman -S glfw-wayland-minecraft-libdecoration glew-wayland prismlauncher brave jdk21-graalvm-ee-bin jetbrains-toolbox profile-sync-daemon-brave mesa-tkg-git lib32-mesa-tkg-git nheko npm qbittorrent shadowsocks-rust-git telegram-desktop keepassxc obsidian libreoffice-fresh hunspell-ru discord smplayer nextcloud-client audacious steam gamemod heroic-games-launcher proton-ge-custom gimp lutris

chsh -s /usr/bin/fish antonix

cp environment /etc/environment
cp config.fish ~/.config/fish/

systemctl enable prelockd.service
systemctl enable preload.service
systemctl enable memavaild.service
systemctl enable irqbalance.service
systemctl enable --now fstrim.timer
systemctl enable uksmd.service
systemctl enable bpftune
systemctl enable uresourced
systemctl enable tlp

ln -s /usr/bin/nvim /bin/nv
