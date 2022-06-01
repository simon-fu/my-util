#!/bin/bash
CMD="ssh -L127.0.0.1:9092:192.168.1.180:22292 turn4"
echo $CMD
$CMD


