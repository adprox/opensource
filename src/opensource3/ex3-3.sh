#!/bin/sh
a=$1
b=$2

c=$(echo "scale=2; $b / 100" | bc)
result=$(echo "scale=2; ($a) / ($c * $c)" | bc)

if [ "$(echo "$result > 23" | bc)" -eq 1 ]; then
  echo "과체중입니다."
elif [ "$(echo "$result <= 18.5" | bc)" -eq 1 ]; then
  echo "저체중입니다."
else
  echo "정상체중입니다."
fi

