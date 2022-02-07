#!/bin/bash

if [ $# -lt 2 ]; then
    echo Usage : bash check_port.sh [IP] [Ports...]
fi

addr=$1
# 주소를 저장한 후 shift 로 제외시킴
shift

# $@ 에는 포트번호들만 이터러블하게 존재
for port in $@
do
    # netcat 을 통해 
    # -z 옵션으로 tcp 3 way handshake 만 진행(실제 통신 X)
    # -w 옵션으로 타임아웃 설정
    nc -w 5 -z $addr $port
    # $? 에는 직전 명령어의 종료 상태값이 담겨있음
    if [ $? -eq 0 ]; then
        echo Success at $port
    else
        echo Failed at $port
    fi
done