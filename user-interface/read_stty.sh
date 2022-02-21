#!/bin/bash

function read_without_enter() {
    # 현재 터미널 설정 상태 저장
    state=$(stty -g)
    # 터미널을 raw 모드로 변경해서, 다음 입력을 dd 에 전달
    stty raw
    # dd 에서 1바이트를 한번 읽음
    char=$(dd bs=1 count=1 2>/dev/null)
    # stty 상태 복구
    stty $state
    
    # 사용자 입력에 따른 case문 처리
    echo
    case "$char" in
    [yY])
        exit
        ;;
    [nN])
        return
        ;;
    *)
        echo "y or n"
        return 
        ;;
    esac
}

# 시그널 제어(SIGINT)
trap '
    echo
    echo -n "stop? [y/n]: "
    read_without_enter
' INT

echo -n "ID: "
read ID

# 터미널 에코백 off(입력하는 문자 화면에 표시되지 않음)
stty -echo
echo -n "PASSWORD: "
read PASSWD
# 에코백 ON
stty echo

echo

read dummy