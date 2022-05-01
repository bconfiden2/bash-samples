#!/bin/bash

msg="Exception"

# strings - 컴파일된 실행파일에서 특정 문자열 찾아내기
# 문자열 상수는 실행파일에도 그대로 저장되기 때문
# -f 옵션으로 파일 지정
# 해당 파일 안에 있는 문자열 추출하여 표준출력으로 보내고, grep 이 가져와서 원하는 문자열 검색
strings -f /usr/bin/* | grep $msg | head -n 10