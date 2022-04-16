#!/bin/bash

# --exclude 뒤의 표현식에 맞는 파일 제외하고 아카이브
tar cvf bash.tar --exclude "input*" *.sh
# -X 옵션으로 제외할 파일들이 담긴 목록을 넘겨줄 수도 있음
if [ -e "exclude.list" ]; then
    tar cvf bash.tar -X "exclude.list" *.sh
fi