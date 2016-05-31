# Kill the messenger

A Telegram bot written in bash that teaches you to swear in as many languages as it could.

Depends on [tmux](http://github.com/tmux/tmux).
Uses [JSON.sh](http://github.com/dominictarr/JSON.sh).



### Install bashbot
Clone the repository:
```
git clone --recursive https://github.com/zouzouek/Kill-the-messenger
```

Create a file called token and paste your bot token in there.
Then text your bot with the command /start.

### Usage

* Create a file called token and place your bot token inside
*  run `bash bashbot start` inside the project directory
*  Send `/start` Message to your bot .( In this case @international_swearing_bot)
*  Teach new swears to the bot by running `bash writeFile.sh ¨<language>¨ ¨<swear>¨`
*  Each word added triggers a broadcast informing all users that new language has been learned

## To Do

* GUI application to interact with writeFile.sh and make it easier to add languages
* Localise the GUI application to arabic language.
* Create an xinetd configuartion to enable running the bot as a daemon
