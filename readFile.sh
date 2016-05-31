#!/usr/bin/bash

filename="SwearList"
	while read -r line
		do
			IFS=':' read -ra ADDR <<< "$line"
			for i in "${ADDR[@]}"; do
			    # process "$i"

				if [ "$i" == "$1" ] 
				then
					echo ${ADDR[$i+1]}
					exit
				fi
			done
   # name="$line"
    #echo "Swear read from file - $name"
		done < "$filename"

echo "Sorry i don't know how to swear in that language"
