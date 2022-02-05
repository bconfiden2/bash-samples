#!/bin/bash

# netstat 으로 라우팅테이블 확인, 목적지를 0.0.0.0으로 하는 게이트웨이 가져오기
gw=$(netstat -rn | awk '$1 == "0.0.0.0" {print $2}')

# 게이트웨이에 핑을 1번만 보내고, 표준출력/표준에러는 무시
ping -c 1 $gw 1> /dev/null 2> /dev/null

echo Default GateWay : $gw
# 명령어 결과에 대한 상태값은 $? 에 저장
if [ $? -eq 0 ]; then
    echo [Success]
else
    echo [Fail]
fi