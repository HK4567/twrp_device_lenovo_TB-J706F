#!/system/bin/sh

mkdir /data/1
cd /data/1
logcat > $(echo $RANDOM).log
#logcat > $(date +%S).log