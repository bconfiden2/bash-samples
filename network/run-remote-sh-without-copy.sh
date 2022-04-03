#!/bin/bash

script="ping_dgw.sh"

# 스크립트 내용을 원격에서 실행되는 bash의 표준 입력으로 넣어줌
cat $script | ssh p01 "bash"
cat $script | ssh p02 "bash"
cat $script | ssh p03 "bash"
cat $script | ssh p04 "bash"
cat $script | ssh p05 "bash"
cat $script | ssh p06 "bash"
cat $script | ssh p07 "bash"
cat $script | ssh p08 "bash"
cat $script | ssh p09 "bash"