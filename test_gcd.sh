#!/bin/bash

# テストケース
tests=(
  "2 4 2"
  "18 24 6"
  "7 3 1"
  "5 0 5"
  "0 5 5"
)

# テスト実行
for test in "${tests[@]}"; do
  IFS=' ' read -r -a params <<< "$test"
  result=$(./gcd.sh "${params[0]}" "${params[1]}")
  if [ "$result" != "${params[2]}" ]; then
    echo "Test failed: ${params[0]}, ${params[1]} => Expected ${params[2]}, got $result"
    exit 1
  fi
done

echo "All tests passed."
