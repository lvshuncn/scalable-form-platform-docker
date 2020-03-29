#! /bin/bash
docker rm -f scalable-form-server
docker run --name scalable-form-server \
  -d \
  -p 3000:3000 \
  scalable-form-platform:0.1.0
