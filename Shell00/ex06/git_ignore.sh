#!/bin/bash

#arr=("")
for i in $(find "./.." -name ".gitignore");do
	$(chmod a+x "$i")
	while read line
	do
		echo $line
	done < "$i"
done

#echo ${arr[@]}
