#!/bin/bash

# 현재시간을 date2와 같은 형식으로 포매팅
date1=$(date "+%Y-%m-%d %H:%M:%S")
date2="2022/03/15 10:32:48"

# 날짜를 유닉스 시간 형태로 변환
# 유닉스 시간 = 유닉스 에폭 = 1970/01/01 00:00:00 기준으로 경과한 초
d1_epoch=`date -d "$date1" '+%s'`
d2_epoch=`date -d "$date2" '+%s'`

echo $date1: $d1_epoch
echo $date2: $d2_epoch

# expr로 두 유닉스 시간 차이를 빼서 필요에 맞게 계산
echo day interval: `expr \( $d1_epoch - $d2_epoch \) / 86400`
echo hour interval: `expr \( $d1_epoch - $d2_epoch \) / 3600`
echo minute interval: `expr \( $d1_epoch - $d2_epoch \) / 60`
echo second interval: `expr \( $d1_epoch - $d2_epoch \)`