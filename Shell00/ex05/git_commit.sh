#!/bin/bash

count=5

arr=("")
result=("")

for i in $(git log);do
	if [[ -n $i ]];then
		arr+=($i)
	fi
done

#echo "0: ${arr[0]}" -> if 추가하기 전에 인덱스 0이 항상 empty -> if add

for (( idx=0; idx<${#arr[@]}; ++idx ));do
	
	if [ "${arr[$idx]}" = "commit" ];then
		result+=($(echo ${arr[($idx + 1)]}))
	fi
done

for ((i=1; i<$count+1; i++));do
    echo ${result[$i]}
done
