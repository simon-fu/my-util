#!/bin/bash
echo "export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

echo "export https_proxy=http://192.168.1.180:7890 http_proxy=http://192.168.1.180:7890 all_proxy=socks5://192.168.1.180:7890"

echo "unset https_proxy http_proxy all_proxy"

CMD="ssh -R 0.0.0.0:7890:127.0.0.1:7890 turn4"
echo $CMD
$CMD


