#! /bin/bash
IFS=', ' read -r -a a
for ((i = 0; i<${#a[*]}-1; i++))
do  
    for((j = i+1; j<${#a[*]}; j++))
    do 
	    if (( ${a[i]} > ${a[j]} ))
        then
            temp=${a[j]}
            a[j]=${a[i]}  
            a[i]=$temp
        fi
    done
done
echo ${a[*]}