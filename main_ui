#!/bin/bash



which gdialog 2> /dev/null && DIALOG=gdialog || DIALOG=dialog

GETTEXT="gettext -d main_ui"
OPTION=$($GETTEXT 'Choose option')
SEARCH=$($GETTEXT "Search")
VIEW=$($GETTEXT "View List")
ADD=$($GETTEXT "Add")
ADD_DESCR=$($GETTEXT "Add to the list")
LANG=$($GETTEXT "Enter Language:")
SWEAR=$($GETTEXT "Enter Swear:")
echo $SEARCH
while true
do
CHOICE=$($DIALOG --menu "$OPTION" 10 35 2 "$SEARCH" "$VIEW" "$ADD" "$ADD_DESCR" 2>&1 > /dev/null)

	case $CHOICE in
	  "Search|Search")
	     $DIALOG --textbox SwearList 100 100
	     ;;
	  "Add|Add")
	    Language=$($DIALOG --inputbox "$LANG" 8 35 2 2>&1 > /dev/null)    
	    Swear=$($DIALOG --inputbox "$SWEAR" 8 35 2 2>&1 > /dev/null)
	    bash writeFile.sh "$Language" "$Swear"
	     ;;
	  "")
	exit
	;;
	esac

done


