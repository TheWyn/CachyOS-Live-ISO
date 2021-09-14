#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="cachyos"
iso_label="CachyOS_$(date +%Y%m)"
iso_publisher="CachyOS <https://cachyos.org>"
iso_application="CachyOS Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
work_dir=work
out_dir=out
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/sudoers.d"]="0:0:750"
)