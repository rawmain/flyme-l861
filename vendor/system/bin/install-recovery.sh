#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11134976 64330e8bb50265ba7f3829a8befb7e131f69325c 7880704 529e9fcac7931e4078d54840bc18c95178b0f684
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:11134976:64330e8bb50265ba7f3829a8befb7e131f69325c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:7880704:529e9fcac7931e4078d54840bc18c95178b0f684 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 64330e8bb50265ba7f3829a8befb7e131f69325c 11134976 529e9fcac7931e4078d54840bc18c95178b0f684:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
