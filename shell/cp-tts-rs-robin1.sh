#!/bin/bash

# exit if any error
set -e

CMD="scp turn4:/data/simon/tts-rs/build_release/release.latest.tar.gz /tmp/"
echo $CMD
$CMD

CMD="scp /tmp/release.latest.tar.gz robin1:/root/simon/tts-rs/"
echo $CMD
$CMD



