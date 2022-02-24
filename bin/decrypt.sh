#!/bin/bash


while true;
do
	cd ~/src/cryptography/
	dir=$(pwd)

	if [ "$(ls -A /home/client/src/cryptography/toDecrypt)" ]; then
		for file in $dir/src/cryptography/toDecrypt/*; do
	    		txt="$(basename "$file")"
			mv $dir/src/crytography/toDecrypt/$txt $dir/src/cryptography/toDecrypt/todecrypt.txt
		
			cd $dir/src
			python3 decrypt.py

			cd $dir/src/cryptography/toDecrypt
			rm $txt
		done
	fi
done


