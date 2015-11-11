#!/usr/bin/env bash

docker build -t devopsby .
docker run --rm=true -ti -v `pwd`/:/build devopsby "jekyll build --incremental -s /build/ -d /build/_site/"

aws s3 sync ./_site/ s3://devops.by
