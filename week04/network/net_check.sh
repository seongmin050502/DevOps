#!/usr/bin/env bash
# 네트워크 기본 정보 및 연결 확인
# 사용법: ./net_check.sh [도메인]
set -u

HOST="${1:-cs.inhatc.ac.kr}"

echo "=== 내 IP 주소 ==="
if command -v ip >/dev/null 2>&1; then
  ip addr
else
  echo "ip 명령을 찾을 수 없습니다."
fi

echo
echo "=== 호스트 이름의 IP 주소 (dig) ==="
if command -v dig >/dev/null 2>&1; then
  dig "$HOST" +short
else
  echo "dig가 없습니다. Ubuntu/WSL: sudo apt install -y dnsutils"
fi

echo
echo "=== HTTP 응답 헤더 (curl) ==="
if command -v curl >/dev/null 2>&1; then
  curl -I --max-time 8 "https://$HOST" || true
else
  echo "curl 명령을 찾을 수 없습니다."
fi

echo
echo "=== LISTEN 중인 TCP 포트 ==="
if command -v ss >/dev/null 2>&1; then
  ss -tln
else
  echo "ss 명령을 찾을 수 없습니다."
fi
