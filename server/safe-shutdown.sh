#!/bin/bash

# 시스템에 다른 사용자가 로그인 중인지 확인
others=$(who | wc -l)
# who 출력 결과가 2줄 이상일 경우
if [ $others -ge 2 ]; then
    echo "[ERROR]: more than 2 users working - check 'who'" >&2
    exit -1
fi

# 미리 지정한 특정 프로세스가 실행중인지 확인
psname="python3"
# 찾아낼 경우 종료 status는 0 으로 세팅됨
ps ax -o command | grep -q "^$psname"
if [ $? -eq 0 ]; then
    echo "[ERROR]: python3 working - check 'ps'"
fi

# -h : halt(종료), 지금 당장
shutdown -h now