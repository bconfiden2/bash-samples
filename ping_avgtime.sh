#!/bin/bash

if [ $# -lt 2 ]; then
    echo bash ping_avgtime.sh [IP] [CNT]
    exit
fi

addr=$1
cnt=$2

echo "Ping $cnt times, to $addr"
echo average: `ping -c $cnt $addr | sed -n "s/^.*time=\(.*\) ms/\1/p" | awk '{sum+=$1} END{print sum/NR}'`ms

# sed -n "s/^.*time=\(.*\) ms/\1/p"
# time=(XXX)ms 형태에서 마이크로초(XXX 부분의 숫자 부분만 출력

# awk '{sum+=$1} END{print sum/NR}'
# sum 변수에 값들을 저장하다가 완료시 처리한 줄 수(NR)로 나눈 값 출력