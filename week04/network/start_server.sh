#!/usr/bin/env bash
# 현재 디렉터리에서 간단한 테스트용 웹 서버 실행
# 사용법: ./start_server.sh [포트번호]
set -eu

PORT="${1:-8080}"
if ! [[ "$PORT" =~ ^[0-9]+$ ]] || (( PORT < 1 || PORT > 65535 )); then
  echo "오류: 포트 번호는 1~65535 사이의 숫자여야 합니다."
  exit 1
fi

echo "웹 서버를 시작합니다: http://localhost:$PORT"
echo "종료하려면 Ctrl+C를 누르세요."
exec python3 -m http.server "$PORT" --bind 127.0.0.1
