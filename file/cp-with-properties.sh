#!/bin/bash

# a, r 을 옵션으로 받음
while getopts "ar" opt
do
    case $opt in
        a)
            # cp -a 옵션으로 타임스탬프와 권한 유지
            # -a 가 없을 경우에는 umask 적용된 상태로 복사
            cp -a input input-property
            exit
            ;;
        r)
            cp -r input input-recursive
            exit
            ;;
    esac
done