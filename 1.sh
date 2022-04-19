#!/bin/bash
read filename
sed '/^$/d' $filename
echo
echo
echo
echo
awk '!seen[$0]++' $filename