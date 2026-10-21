#!/usr/bin/env bash
# 사용법: ./search_examples.sh [검색할_디렉터리]
set -u

TARGET="${1:-.}"
if [[ ! -d "$TARGET" ]]; then
  echo "오류: 디렉터리가 없습니다: $TARGET"
  exit 1
fi

echo "=== 셸 스크립트 파일 ==="
find "$TARGET" -type f -name "*.sh"

echo
echo "=== ERROR가 포함된 줄 (대소문자 무시) ==="
if [[ -f "$TARGET/server.log" ]]; then
  grep -in "error" "$TARGET/server.log" || true
else
  echo "$TARGET/server.log 파일이 없습니다. 필요하면 실습용 로그를 만들어 보세요."
fi
