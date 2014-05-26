#!/bin/bash

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

for v in */; do
  v="${v%/}"

  (
  cd $v
  docker build -t nitrousio/ubuntu-dind:$v .
  )
done
