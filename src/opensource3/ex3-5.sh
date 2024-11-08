#!/bin/sh

# 함수 정의
my_function() {
  echo "함수 안으로 들어왔음"
  ls "$@"  # 입력 인자를 ls 명령어에 옵션으로 전달
}

echo "프로그램을 시작합니다."

# 함수 호출
my_function "$@"

echo "프로그램을 종료합니다."
