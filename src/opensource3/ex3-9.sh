
name=$1

if [ -f "DB.txt" ]; then
  result=$(grep -i "^$name" DB.txt)
  if [ -n "$result" ]; then
    echo "$result"
  else
    echo "해당 이름의 정보가 DB.txt에 없습니다."
  fi
else
  echo "DB 파일 존재하지 않음"
fi

