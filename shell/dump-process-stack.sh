#!/bin/bash

# PROCESS_NAME="eim-server"
PROCESS_NAME="$1"
PROCESS_ID="$(pgrep $PROCESS_NAME)"
echo "process-name=$PROCESS_NAME"
echo "pid=$PROCESS_ID"

echo -e 'settings set frame-format frame #${frame.index}: ${frame.pc}{ ${module.file.basename}{\`${function.name}}}{ at ${line.file.fullpath}:${line.number}}\\\n\nthread backtrace all' |  lldb -p $PROCESS_ID


