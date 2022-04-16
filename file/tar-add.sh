#!/bin/bash

tarfile=bash.tar
addfile=input

# r 옵션을 통해 기존 아카이브파일의 뒤에 파일 추가
tar rvf $tarfile $addfile