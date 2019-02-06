#!/bin/bash

ROOT=`pwd`

BIN_DIR="$ROOT/build"
INC_DIR="$ROOT/include"

function build()
{
  echo build start [$ROOT]
  rm -rf $BIN_DIR
  mkdir $BIN_DIR && cd $BIN_DIR
  cmake .. -DBUILD_TYPE=coverage
  make
  echo build finish
}

function run-tests()
{
  find "$1" -name "$2" -print0 | while read -d $'\0' f
  do
    "$f"
  done
}

build

run-tests $BIN_DIR test.out

