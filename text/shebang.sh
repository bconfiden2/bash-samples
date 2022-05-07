#!/bin/bash

# 인자로 입력받은 파일의 존재여부 확인
if [ ! -f $1 ]; then
    echo $1 not exist >&2
    exit 1
fi

# head 한줄 가져오기(셔뱅)
headline=$(head -n 1 "$1")

# 셔뱅에 따라 확장자 부여
case $headline in
    *bash*)
        mv -v $1 "$1".sh
        ;;
    *python*)
        mv -v $1 "$1".py
        ;;
    *)
        ;;
esac