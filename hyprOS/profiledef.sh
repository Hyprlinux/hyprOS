#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="hyprOS-$(date +%Y%m%d)"
iso_label="HYPR_$(date +%Y%m)"
iso_publisher="jacekpoz <jacekpoz@cock.li>"
iso_application="hyprOS Live Boot"
iso_version="$(date +%Y.%m.%d)"
install_dir="hypr"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
  ["/usr/local/bin/hyprctl"]="0:0:755"
  ["/usr/local/bin/Hyprland"]="0:0:755"
  ["/usr/lib/libwlroots.so.11032"]="0:0:755"
)
