#!/bin/bash

file1=$1
file2=$2

check()
{
    # 체크할 파일이 존재(-e)하지 않는다면(!)
    if [ ! -e $1 ]; then
        echo "Error: $1 does not exist"
        exit 1
    fi
}

check $file1
check $file2

# test -nt : newer than, 더 새로운 파일인지 비교
# 만약 타임스탬프가 동일할 경우에는, 새로운 파일이 아니기 때문에 거짓
# -ot : older than
if [ $file1 -nt $file2 ]; then
    echo "[$file1] is newer than [$file2]"
else
    echo "[$file2] is newer than [$file1]"
fi