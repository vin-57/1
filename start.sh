#!/bin/bash
app="docker.test"
docker build -t ${app} .
docker run -d -p 5000:80 \
  --name=${app} \
  -v $PWD:/cgi-bin ${app}
