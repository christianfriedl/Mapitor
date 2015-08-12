#!/bin/bash

echo "adding license header to $1"

cat license-header.txt > $1.lic && echo "" >> $1.lic && cat $1 >> $1.lic && mv $1.lic $1

echo
echo "head of resulting file:"
echo
head -30 $1
