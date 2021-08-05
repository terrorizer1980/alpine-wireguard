#!/bin/ash

for f in /secret/wg*.conf
do
	if [ -e "$f" ]
	then
		wg-quick up "$f"
	fi
done


