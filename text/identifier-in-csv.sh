#!/bin/bash

csvfile="input.csv"

# 실행 인자가 입력 되었는지 test -z
if [ -z $1 ]; then
    echo "select identifier" >&2
    exit 1
fi

# csv 파일을 리디렉션 받아서 line 으로 가져옴
while read line
do
    # cut에 , 를 기준으로 잘라 각 컬럼별로 값 지정
    id=$(echo $line | cut -f 1 -d ',')
    col1=$(echo $line | cut -f 2 -d ',')
    col2=$(echo $line | cut -f 3 -d ',')

    # id 가 찾으려는 값과 동일할 경우 출력
    if [ $id == $1 ]; then
        echo $col1 , $col2
    fi
done < $csvfile