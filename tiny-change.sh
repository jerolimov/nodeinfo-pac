#!/bin/bash

set -e

file=counter.txt

i=$(cat "$file")
((i+=1))
echo $i > "$file"

git add "$file"
git commit -m "Increase counter"

