#!/bin/bash

echo 'build:'
docker build -q -f Dockerfile.debian  -t my/benchmark/ruby:2.5.3-slim-stretch .
docker build -q -f Dockerfile.alpine  -t my/benchmark/ruby:2.5.3-alpine3.9 .

echo
echo "### ruby:2.5.3-slim-stretch ###"
docker run --rm -it my/benchmark/ruby:2.5.3-slim-stretch
echo
echo "### ruby:2.5.3-alpine3.9 ###"
docker run --rm -it my/benchmark/ruby:2.5.3-alpine3.9
