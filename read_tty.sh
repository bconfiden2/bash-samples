#!/bin/bash

# 현재 사용중인 콘솔 디바이스
tty=$(tty)
# while 문에서 입력을 받아 line 이라는 변수에 저장
while read line
do
    echo $line
    # 입력을 콘솔로부터 받아오라고 지정 - 사용자 입력을 받아옴
    read user_input < $tty
    echo $user_input
# 입력은 input 이란 파일을 redirection
done < input