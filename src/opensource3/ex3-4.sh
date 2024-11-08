#!/bin/sh
echo "리눅스가 재미있나요?(yes/no)"
read a
case "$a" in
  [Yy]* | [Yy][Ee][Ss]*)
    echo "yes"
    ;;
  [Nn]* | [Nn][Oo]*)
    echo "no"
    ;;
  *)
    echo "yes or no로 입력해 주세요."
    ;;
esac

