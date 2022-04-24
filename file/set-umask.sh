#!/bin/bash

# mask 3 -> 소유  : r--
# mask 7 -> 그룹  : ---
# mask 7 -> 기타  : ---
umask 377

# 파일 소유자에게도 리드온리인 파일으로 생성
echo "a8bD2!d^xGz" > password.txt