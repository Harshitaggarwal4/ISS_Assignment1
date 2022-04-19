#!/bin/bash
read string
len=${#string}
for((i=len-1;i>-1;i--))
do
	OUTPUT=$OUTPUT${string[0]:i:1}
done
echo $OUTPUT
echo
len=${#string}
for((i=len-1;i>-1;i--))
do
	temp=${string[0]:i:1}
	return=$return$temp
done
return=$(echo "$return" | tr "0-9a-zA-Z" "1-9a-zA-ZA")
echo "$return"
echo
let n=${#string}
let t=n/2
for((i=t-1;i>-1;i--))
do
	output=$output${string[0]:i:1}
done
for((i=t;i<n;i++))
do
	output=$output${string[0]:i:1}
done
echo $output