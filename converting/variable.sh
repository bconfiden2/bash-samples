#!/bin/bash

echo ":= 는 변수가 없거나 비어있을때 지정한 값 할당"
echo $FOO
echo ${FOO:=test}
echo $FOO

echo

echo ":- 는 변수가 없을 때 지정한 값을 사용, 할당하진 않음"
echo $FOO2
echo ${FOO2:-test}
echo $FOO2

echo

echo ":+ 는 변수가 있으면 지정한 값 반환, 없으면 null 반환"
echo ${FOO3:+FOO3 EXIST}
echo ${FOO:+FOO EXIST}

echo

echo ":? 는 변수가 없으면 지정한 값 출력 후 종료"
echo ${FOO3:?"FOO3이 없습니다"}