#!/bin/sh
### BEGIN INIT INFO
# Provides: aria2
# Required-Start: $remote_fs $network
# Required-Stop: $remote_fs $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Aria2 Downloader
### END INIT INFO

case "$1" in
start)

echo -n "已开启Aria2c"
#sudo -u参数来指定运行权限，避免aria2以root权限运行
sudo -u deepin aria2c --conf-path=/home/deepin/.aria2/aria2.conf -D
;;
stop)

echo -n "已关闭Aria2c"
killall aria2c
;;
restart)

killall aria2c
#sudo -u参数来指定运行权限，避免aria2以root权限运行
sudo -u deepin aria2c --conf-path=/home/deepin/.aria2/aria2.conf -D
;;
esac
exit
