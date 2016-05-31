#!/usr/bin/bash

filename="SwearList"
echo "$1:$2" >> $filename
echo "New Sentence Added"
bash bashbot.sh broadcast "New Language added : $1"
