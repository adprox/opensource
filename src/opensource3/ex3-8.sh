#!/bin/sh

# 입력받은 이름과 정보
name=$1
info=$2

# DB.txt 파일에 이름과 정보를 추가
if [ -f "DB.txt" ]; then
  echo "$name $info" >> DB.txt
else
  echo "$name $info" > DB.txt
fi
