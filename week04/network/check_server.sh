#!/usr/bin/env bash
# 로컬 테스트 서버의 HTTP 응답과 포트 상태 확인
# 사용법: ./check_server.sh [포트번호]
set -u

PORT="${1:-8080}"
echo "=== HTTP 응답 헤더 ==="
curl -I --max-time 5 "http://localhost:$PORT" || true
echo
echo "=== 해당 포트 LISTEN 여부 ==="
if command -v ss >/dev/null 2>&1; then
  ss -tln | grep -E ":${PORT}[[:space:]]" || echo "포트 $PORT에서 LISTEN 중인 TCP 서버를 찾지 못했습니다."
else
  echo "ss 명령을 찾을 수 없습니다."
fi
