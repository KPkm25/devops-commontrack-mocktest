#!/bin/bash

DIR=$1
read -p "Enter file extension to organize(txt,log,sh): " EXT

mkdir -p "$DIR/organized/$EXT"

COUNT=0

for FILE in "$DIR"/*.$EXT; do
  [ -e "$FILE" ] || continue
  mv "$FILE" "$DIR/organized/$EXT/"
  echo "Moved: $FILE -> $DIR/organized/$EXT/"
  COUNT=$((COUNT + 1))
done

echo "Total files moved: $COUNT"
