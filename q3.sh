#!/bin/bash
read filename
find "$filename" -printf "%s\n"
echo
wc -l $filename | awk '{ print $1 }'
echo
wc -w $filename | awk '{ print $1 }'
echo
IFS=$'\n' 
I=1
while read line; do
echo -n Line No: $I - Count of Words: 
wc -w <<< "$line"   
I=$(($I+1))
done < $filename
awk '{for(i = 1; i <= NF; i++) {a[$i]++}} END {for(k in a) if(a[k] > 1) {print "Word :"k,"- Count of repetition :"a[k]}}' $filename