#!/bin/sh
cd /home/tasuwo/app
swift package update && vapor build --release
systemctl start app
systemctl start nginx
