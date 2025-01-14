flatpak install citra net.davidotek.pupgui2
systemctl enable NetworkManager org.cups.cupsd lvm2-monitor avahi-daemon spice-vdagentd systemd-resolved upower || true
systemctl --global enable pipewire || true
systemctl disable multi-user.target
systemctl set-default graphical.target
useradd -c \'Live User\' -G users,wheel -m liveuser
passwd -d liveuser