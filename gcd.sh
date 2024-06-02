#!/bin/bash

# 最大公約数を計算する関数
gcd() {
  a=$1
  b=$2
  while [ $b -ne 0 ]; do
    t=$b
    b=$((a % b))
    a=$t
  done
  echo $a
}

# 入力チェック
if [ $# -ne 2 ]; then
  echo "Usage: $0 num1 num2" >&2
  exit 1
fi

# 引数が自然数かどうかをチェック
if ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
  echo "Both arguments must be natural numbers." >&2
  exit 1
fi

# 最大公約数を計算
gcd $1 $2

