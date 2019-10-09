#!/bin/sh

for name in `find . -type f -not -path "*git*"`; do
    sed -i .bak $'s/\r$//' $name
done
