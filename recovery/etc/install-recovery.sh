#!/system/bin/sh
if ! applypatch -c MTD:recovery:3957827:597958dc94eab254dc38d53465ea806ee82d4776; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:3782480:47be8c577ad3d87ae95546d74835942ee8d3ea2b MTD:recovery 597958dc94eab254dc38d53465ea806ee82d4776 3957827 47be8c577ad3d87ae95546d74835942ee8d3ea2b:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
