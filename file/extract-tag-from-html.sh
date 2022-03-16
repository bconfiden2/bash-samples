#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: ./extract-tag-from-html.sh [dir]"
    exit 1
fi

target_dir=$1

for file in $target_dir/*.html
do
    html_name=`basename $file .html`
    echo -----
    echo $html_name
    # -nj 옵션으로 패턴스페이스 출력 X
    # \1 로 후방참조
    # p 플래그로 치환이 발생하는 경우에만 출력
    sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $file
    echo -e -----"\n"
done