#!/bin/sh

for name in `find . -type f`; do
    sed -i .bak $'s/\r$//' $name
done
