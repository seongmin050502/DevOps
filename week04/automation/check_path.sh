#!/usr/bin/env bash
# 사용법: ./check_path.sh [파일 또는 디렉터리 경로]
set -u

PATH_TO_CHECK="${1:-}"
if [[ -z "$PATH_TO_CHECK" ]]; then
  echo "사용법: $0 [파일 또는 디렉터리 경로]"
  exit 1
elif [[ -f "$PATH_TO_CHECK" ]]; then
  echo "파일입니다: $PATH_TO_CHECK"
elif [[ -d "$PATH_TO_CHECK" ]]; then
  echo "디렉터리입니다: $PATH_TO_CHECK"
else
  echo "파일이나 디렉터리가 없습니다: $PATH_TO_CHECK"
  exit 1
fi
