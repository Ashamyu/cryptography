#!/bin/bash

while true;
do
	cd ~/src/cryptography/
	dir=$(pwd)

	if [ "$(ls -A /home/client/src/cryptography/toCrypt)" ]; then
		for file in $dir/src/cryptography/toCrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/src/cryptography/toCrypt/$txt $dir/src/cryptography/toCrypt/tocrypt.txt
		
			cd $dir/src/cryptography/bin
			python3 crypt.py

			cd $dir/src/cryptography/toCrypt
			rm $txt
		done
	fi
done
