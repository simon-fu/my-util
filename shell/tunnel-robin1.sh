#!/bin/bash

echo ""
echo "curl http://127.0.0.1:8089/v1/cs/on_startup"
echo "udp forward:"
echo "  server: nc -l 11111 | nc -u 127.0.0.1 7002"
echo "  local: nc -u -l 7002 | nc 127.0.0.1 11111"
echo ""

CMD="ssh"
CMD="$CMD -L0.0.0.0:8180:127.0.0.1:8180" # mmonit web
CMD="$CMD -L0.0.0.0:8089:127.0.0.1:8089"
CMD="$CMD -L127.0.0.1:11111:127.0.0.1:11111"
CMD="$CMD -R127.0.0.1:1935:127.0.0.1:1935"
CMD="$CMD -R127.0.0.1:8080:127.0.0.1:8080"
CMD="$CMD -R127.0.0.1:8087:127.0.0.1:8087"
CMD="$CMD robin1"
echo $CMD
$CMD


