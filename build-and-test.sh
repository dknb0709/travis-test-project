#!bin/bash

BIN_DIR="$ROOT/bin/test"
INC_DIR="$ROOT/include"

function run-tests()
{
  find "$1" -name "$2" -print0 | while read -d $'\0' f
  do
    "$f"
  done
}

run-tests $BIN_DIR fat-test

