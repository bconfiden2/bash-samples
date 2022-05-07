#!/bin/bash

# /etc/passwd - 사용자 계정 등의 정보들이 담긴 파일
# 주석으로 시작하는 문장은 제외하고 grep 한 결과를 파이프라인으로
# : 를 기준으로 나누고 첫번째 열 출력
grep -v "^#" /etc/passwd | cut -f 1 -d ":"