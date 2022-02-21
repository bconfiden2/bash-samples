#!/bin/bash

# 기본적으로 쉘스크립트에서 모든 변수는 전역적으로 사용
MSG="this message is for global"

local_var()
{
    # local 명령어로써 변수를 지역변수로 바꿈
    local MSG
    # local_var 을 호출한 부분에서 넘겨준 파라미터를 받음
    MSG=$1
    echo "MSG in local_var: $MSG"
}

local_var "this message is for local"

echo "MSG in global: $MSG"