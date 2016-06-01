#!/bin/bash



which gdialog 2> /dev/null && DIALOG=gdialog || DIALOG=dialog


while true
do
CHOICE=$($DIALOG --menu "Choose option" 10 35 2 "Search" "View List" "Add" "Add to the list" 2>&1 > /dev/null)

	case $CHOICE in
	  "Search|Search")
	     $DIALOG --textbox SwearList 100 100
	     ;;
	  "Add|Add")
	    Language=$($DIALOG --inputbox "Enter Language:" 8 35 2 2>&1 > /dev/null)    
	    Swear=$($DIALOG --inputbox "Enter Swear:" 8 35 2 2>&1 > /dev/null)
	    bash writeFile.sh "$Language" "$Swear"
	     ;;
	  "")
	exit
	;;
	esac

done


