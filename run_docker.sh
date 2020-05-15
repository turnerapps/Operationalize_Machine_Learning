#!/usr/bin/env bash
# build new image, tag with commit and with latest.
tag=$(git log -1 --format=%h)
docker build -t prediction:$tag -t prediction:latest .

docker images

docker run -it --rm --name prediction -p 8000:80 prediction:latest