#!/bin/bash

echo ""
echo " ZIM 1.0 ċĉşç "
echo ""

CMD="ssh"
# mysql
CMD="$CMD -L127.0.0.1:13306:127.0.0.1:3306"
CMD="$CMD zim-one"
echo $CMD
$CMD
