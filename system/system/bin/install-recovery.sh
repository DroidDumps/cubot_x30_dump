#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:d76868ea6d5b4e954c46cc569afbffbb864c0a97; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:09e3f17e289811b1e3e983f8f4a2997706ed8faf \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:d76868ea6d5b4e954c46cc569afbffbb864c0a97 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
