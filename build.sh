#!/usr/bin/env bash

rm -rf _site/*
docker build -t devopsby .
docker run --rm=true -ti -v `pwd`/:/build devopsby "jekyll build --incremental -s /build/ -d /build/_site/ && chmod -R 777 /build/_site/"

aws s3 sync ./_site/ s3://devops.by