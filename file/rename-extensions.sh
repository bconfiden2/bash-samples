#!/bin/bash

target_dir=$1

# 해당 경로 아래에 있는 모든 파일을 검사하여
for filename in $target_dir/*
do
    case $filename in
        # .tmp 확장자를 가지는 파일들에 대해서
        *.tmp)
            # 해당 파일명 잘라온 뒤 mv 로 확장자 변경
            # 셸변수 filename에서, .* 과 매칭되는 문자열을 삭제 
            head=${filename%.*}
            echo "rename $filename  --->  "$head".txt"
            mv $filename "$head".txt
        ;;
    esac
done

# 반복문 직접 안쓰고 rename 이라는 명령어로 일괄 처리도 가능!

# # 확장자 원상복구(테스트용)
# for filename in $target_dir/*
# do
#     case $filename in
#         *.txt)
#             head=${filename%.*}
#             mv $filename "$head".tmp
#         ;;
#     esac
# done