#!/bin/bash
if [[  $2 == "" ]]
then
	echo 'command <title> <filename>'
	exit 1;
fi
filename=$(date +"%Y-%m-%d")
header="---\n"
header=$header"layout: post\n"
if [[ $1 ]]
then
header=$header"title: \""$1"\"\n"
else
header=$header"title:\n"
fi
header=$header"date: "$(date +"%Y-%m-%d %H:%M:%S %:z")"\n"
header=$header"categories: \n- CS\n"
header=$header"tags: \n- \"Computer Science\"\n"
header=$header"---"
filename=$filename"-"${2// /-}
echo -e $header > "_posts/"$filename".markdown"