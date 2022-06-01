#!/bin/bash

echo ""
echo " 神旗通 "
echo ""

CMD="ssh"
# mysql
CMD="$CMD -L127.0.0.1:23306:127.0.0.1:3306"
CMD="$CMD sqt"
echo $CMD
$CMD

