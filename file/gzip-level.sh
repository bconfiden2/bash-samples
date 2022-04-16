#!/bin/bash

for (( i=1 ; i <= 9 ; i++ )); do
    rm input.gz
    # -1 ~ -9 옵션으로 압축률 설정, 숫자가 높을수록 압축률 높음
    gzip -"$i" -k input
    echo -n "level $i : "
    # 압축된 gz 파일의 크기 확인
    ls -al | grep input.gz | awk '{print $5}'
done