#! /bin/bash
docker rm -f scalable-form-server
docker run --name scalable-form-server \
  -d \
  -p 3000:3000 \
  lvshuncn/scalable-form-platform
