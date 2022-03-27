#!/bin/bash

year=$(date '+%Y')
year=2000

# 각각 나눈 값을 가지고
m1=$(( $year % 4 ))
m2=$(( $year % 100 ))
m3=$(( $year % 400 ))

# 4로 나눠떨어지면서 100으로는 나눠떨어지지 않는, 혹은 400으로 나눠떨어지는 년도
# test 문을 여러개 써서 && 나 || 로 묶을 수도 있고,
# 하나의 테스트 안에서 -a 나 -o 를 사용하여 처리할 수도 있음
if [ $m1 -eq 0 -a $m2 -ne 0 ] || [ $m3 -eq 0 ]; then
    echo $year is leap year!
    echo "$year"-02-29
else
    echo $year is not leap year!
    echo "$year"-02-28
fi