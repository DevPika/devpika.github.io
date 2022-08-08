#!/bin/bash
while read p; do
  echo "$p"
  cp template.md "$p"
done <files.txt