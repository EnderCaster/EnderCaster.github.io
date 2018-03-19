#!/bin/bash
filename=$(date +"%Y-%m-%d")
header="---\n"
header=$header"layout: post\n"
if [[ $1 ]]
then
header=$header"title: \""$1"\"\n"
filename=$filename"-"${1// /-}
else
header=$header"title:\n"
fi
header=$header"date: "$(date +"%Y-%m-%d %H:%M:%S %:z")"\n"
header=$header"categories: \n- CS\n"
header=$header"tags: \n- \"Computer Science\"\n"
header=$header"---"
if [[ $1 ]]
then
	echo -e $header > "_posts/"$filename".markdown"
else
	echo -e $header""
fi 