#!/bin/sh

sudo docker run --init -it --rm -p 8082:8080 \
  -v `pwd`/blogs-libs:/home/wintersmith/blogs-libs \
  -v `pwd`/blogs-web/globals:/home/wintersmith/globals \
  -v `pwd`/blogs-web/hackbytes.io-web:/home/wintersmith/hackbytes.io \
  -m 300M --memory-swap 1G byronsanchez/hackbytes.io \
  $@