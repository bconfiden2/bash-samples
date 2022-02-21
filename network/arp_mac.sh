#!/bin/bash

if [ $# -lt 1 ]; then
    echo bash arp_mac.sh [IP]
    exit
fi

addr=$1

# apr -an : OS에 있는 arp 캐시들을 주소를 그대로(-n) 모두(-a) 가져옴
# 결과에서 원하는 주소만 찾아서 해당 주소의 mac주소만 출력
mac=$(arp -an | awk "/\($addr\)/ {print \$4}")

# mac 주소가 있었다면 변수에 저장되어있음
if [ -n "$mac" ]; then
    echo $addr - $mac
else
    echo "$addr not in arp cache"
fi