#!/bin/bash

dir=~
[ "$1" != "" ] && dir="$1"

cd $dir/ros2_ws
colcon build

source $dir/.bashrc

timeout 10 ros2 launch mkpkg talk_listen.launch.py > /tmp/mkpkg.log

cat /tmp/mkpkg. log |
grep 'Liten: 10'
