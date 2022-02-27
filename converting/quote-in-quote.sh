#!/bin/bash

echo $HOSTNAME
echo "$HOSTNAME"
# 따옴표는 모든 확장 무시
echo '$HOSTNAME'

echo hostname : \"$HOSTNAME\"
# 쌍따옴표 안에서 쌍따옴표는 이스케이프로 표현
echo "hostname : \"$HOSTNAME\""
# 따옴표 안의 따옴표는 확장 무시를 무시, 쌍따옴표 그대로 표현 가능
# 사실 기존의 따옴표로 묶인 문장을 둘로 나누는 것 뿐
echo 'hostname : "'$HOSTNAME'"'