#!/bin/sh

declare -A hashMap

while IFS="=" read -r key value
do
	hashMap[$key]=$value
done < .env

for k in "${!hashMap[@]}"; do
	echo "$k => ${hashMap[$k]}"
done

