#!/bin/bash
set -e
PUSH=$1

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

prepare() {
  local dir=$1
  local version=$2
  mkdir -p $dir
  sed "s/%VERSION%/$version/g" Dockerfile.template > "$dir/Dockerfile"
  cp dind "$dir/"
}

build() {
  local version=$1
  local alias=$2

  (
  cd $version
  echo "===> docker build -t nitrousio/ubuntu-dind:$version ."
  docker build -t nitrousio/ubuntu-dind:$version .
  for a in $alias; do
    echo "===> docker tag -f nitrousio/ubuntu-dind:$version nitrousio/ubuntu-dind:$a"
    docker tag -f nitrousio/ubuntu-dind:$version nitrousio/ubuntu-dind:$a
  done
  )
}

prepare "12.04" "precise"
prepare "14.04" "trusty"
prepare "14.10" "utopic"

build "12.04" "precise"
build "14.04" "trusty"
build "14.10" "utopic latest"

if [[ "$PUSH" == "PUSH" ]]; then
  echo "===> PUSHING nitrousio/ubuntu-dind ...."
  docker push nitrousio/ubuntu-dind
fi
