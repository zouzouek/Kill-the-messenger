install: main_ui-ar.mo
	install writeFile.sh readFile.sh main_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	install main_ui-ar.mo /usr/share/locale/ar/LC_MESSAGES/main_ui.mo
	chmod +x swear

main_ui.pot: main_ui
	xgettext -o main_ui.pot -L Shell main_ui

main_ui-ar.mo: main_ui-ar.po
	msgfmt -o main_ui-ar.mo main_ui-ar.po

clone:
	git clone --recursive https://github.com/zouzouek/Kill-the-messenger

download:
	git pull

upload:
	git add -A
	git commit
	git push origin 

tags:
	git push origin --tags

