#!/bin/bash

# exit if any error
set -e

# display command
set -x

scp turn4:/data/simon/tts-rs/tts-rs/out_version.txt /tmp/
version=`cat /tmp/out_version.txt`
out_file=tts.${version}.tar.gz

scp turn4:/data/simon/tts-rs/build_release/${out_file} /tmp/

scp /tmp/${out_file} robin1:/root/simon/tts-rs/

scp /tmp/${out_file} my-license-gen:/root/simon/tts/release/



# profile=${1:-'release'}
# # profile=${1:-'release-with-debug'}
# out_file=${profile}.latest.tar.gz
# echo out_file=${out_file}

# CMD="scp turn4:/data/simon/tts-rs/build_release/${out_file} /tmp/"
# echo $CMD
# $CMD

# CMD="scp /tmp/${out_file} robin1:/root/simon/tts-rs/"
# echo $CMD
# $CMD



