#!/bin/bash

# -z 는 빈 문자열이면 True
if [ -z $1 ]
then
    # 표준에러로 보내기
    echo "need IP addr" >&2
    exit 1
fi

case $1 in
    # 와일드카드로 네트워크 지정
    192.168.100.* | 192.168.219.*)
        # 핑을 한번만 보내서 응답 받아옴
        ping -c 1 $1 1> /dev/null 2>&1
        # ping 결과 상태가 0 일 경우(정상)
        if [ $? -eq 0 ]; then
            echo Ping to $1: Success
        else
            echo Ping to $1: Fail
        fi
    ;;
    # 나머지 모든 주소들에 대한 처리
    *)
        echo "Not in list" >&2
        exit 2
    ;;
esac