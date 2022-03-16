#!/bin/bash

target=input

# 널 명령어(:)로 해당 파일을 초기화
: > $target
# /dev/null 장치 활용
cp /dev/null $target
cat /dev/null > $target
# true 는 아무것도 출력하지 않고 종료하기 때문에 동일
true > $target

# seq 사용하여 0 부터 9까지 반복해서 파일에 추가
for i in $(seq 0 9)
do
    echo $i >> $target
    echo "itr $i"
    sleep 1
done

# 매번 파일이 초기화된 뒤 써지기 때문에 항상 동일
cat $target