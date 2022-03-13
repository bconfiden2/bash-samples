#!/bin/bash

# 스크립트를 실행시킨 경로를 기준으로 상대경로가 구해짐
cat ../converting/input
bash ./test.sh
# 만약 이 스크립트를 크론에 등록할 경우, 크론 실행자의 홈디렉토리를 기준으로 하게됨
# 따라서 상대경로를 이용할 경우 파일을 찾지 못하며 에러가 발생할 수 있음

# 이를 막기 위해 스크립트의 위치로 작업경로를 이동한 다음 스크립트 실행
# 매번 절대경로를 사용하는 것은 번거롭기 때문에, dirname 활용
tmp=`pwd`
cd $(dirname "$0")
cat ../converting/input
bash ./test.sh
cd $tmp

# 그냥 변수 $0 과 dirname 의 결과 차이
echo $0
echo `dirname $0`