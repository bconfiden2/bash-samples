#!/bin/bash

function usage() {
    echo usage : bash options.sh [-t argu] [-a] p1 p2 ...
}

echo input arguments : $#, $*

flg=false
argu=""
# getopts 명령으로 해석
# t:a 는, 인수를 받는 옵션 t 와 옵션 a 를 받아올 수 있다는 뜻
# opt 로 받아오면서 각 옵션에 대한 처리
# 옵션이 잘못됐을 경우 ? 가 들어오게 되므로, usage 함수 호출
while getopts "t:a" opt; do
    case $opt in
    t)
        argu=$OPTARG
        ;;
    a)
        flg=true
        ;;
    \?)
        usage
        exit
        ;;
    esac
done

if $flg; then
    echo a exist
fi
if [ $argu ]; then
    echo t exist, $argu
fi

# OPTIND 는 다음에 처리할 파라미터의 인덱스 
echo OPTIND : $OPTIND

# OPTIND 에 1을 뺀 값만큼 시프트 시키면, 진짜 인수들부터 $1 로 접근 가능
shift $(expr $OPTIND - 1)
echo remain arguments : $#
for arg in $@; do
    echo -e "\t$arg"
done