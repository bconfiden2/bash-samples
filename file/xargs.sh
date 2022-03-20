#!/bin/bash

target="/var/log"

# 갱신이 365일 이전에 된 .log 파일들을 출력해서 사용자 입력을 받음 
find $target -name "*.log" -mtime +364 -print 2> /dev/null
echo delete? [y/n]
read cmd

# 동일한 파일들을 찾아서 파이프라인으로 넘긴 뒤, xargs 로 받아서 처리
if [ $cmd == "y" ]; then
    find $target -name "*.log" -mtime +364 -print 2>/dev/null | xargs rm -fv
fi