#!/usr/bin/env bash
set -euo pipefail
echo "PWD=$(pwd)"; ls -la

# 実行して出力を比較（末尾改行も厳密にチェック）
./hello > actual.txt
printf "Hello, world!\n" > expected.txt
diff -u expected.txt actual.txt

echo "OK: all tests passed."
