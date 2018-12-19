#!/usr/bin/env bash

set -e

tags=(
"1.0"
"1.1"
"1.2"
"2.1-SNAPSHOT"
)

for tag in ${tags[*]}
do
    echo "building ${tag}"
    docker build --build-arg version=$tag -t phaus/java-packr:$tag .
    docker push phaus/java-packr:$tag
done