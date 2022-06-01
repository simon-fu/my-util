#!/bin/bash

CMD="ssh -R 0.0.0.0:5000:127.0.0.1:5000 my-license-gen"
echo $CMD
$CMD


