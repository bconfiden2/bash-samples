#!/bin/bash

# ifconfig 출력 결과를 영어로 표시
LANG=C ifconfig |\
# 네트워크 인터페이스명 출력(소문자 알파벳으로 시작하는 줄에서만)
awk '/^[a-z]/ {print $1}
/inet / {print "\t"$2}'
# inet 으로 시작하는 라인에서는 두번째 컬럼(ipv4 addr) 출력