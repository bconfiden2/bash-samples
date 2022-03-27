#!/bin/bash

while read addr
do
    lookup=$(host $addr)

    echo -n "$addr : "
    # host 명령어 종료 상태에 따른 처리
    if [ $? -eq 0 ]; then
    # NF = 컬럼 수이기 때문에, $NF = 마지막 컬럼이 됨
    # sed 로 마지막에 등장하는 . 제거
        echo $lookup | awk '{print $NF}' | sed 's/\.$//' 
    else
        echo
    fi
done < input