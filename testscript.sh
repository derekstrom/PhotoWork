#!/bin/bash

THRESHOLD=1024
FILES=`ls /path/to/source/files`
for FILE in ${FILES}; do
COLORS=`identify -format %k "$FILE"`
if [[ $COLORS -lt $THRESHOLD ]]; then
  mogrify -path /path/to/output/dir/ -colorspace Gray "$FILE"
fi
