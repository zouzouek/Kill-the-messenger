#!/bin/bash
# Edit your commands in this file.

# This file is public domain in the USA and all free countries.
# Elsewhere, consider it to be WTFPLv2. (wtfpl.net/txt/copying)


	case $MESSAGE in
		'/swear')
			startproc "./swear"
			;;
		'/info')
			send_message "${USER[ID]}" "This is the bot that makes frequent visits to your mother's house."
			;;
		'/start')
			send_message "${USER[ID]}" "This is the international swearing bot.
This bot will try to swear to you in any language you choose (For educational purpose of course). Go ahead call /swear and try for yourself.

Available commands:
• /start: Start bot and get this message.
• /info: Get shorter info message about this bot.
• /swear: Learn a new swear word in a new language.
• /cancel: Cancel any currently running interactive chats.

"
			;;
		'/cancel')
			if tmux ls | grep -q $copname; then killproc && send_message "${USER[ID]}" "Command canceled.";else send_message "${USER[ID]}" "No command is currently running.";fi
			;;
		*)
			if tmux ls | grep -v send | grep -q $copname;then inproc; else send_message "${USER[ID]}" "$MESSAGE" "safe";fi
			;;
	esac

