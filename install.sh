#! /bin/bash
function yes_or_no {
	while true; do
		read -p "$* [y/n]: " yn
		case $yn in
			[Yy]*) return 0  ;;
			[Nn]*) echo "Quitting..." ; return 1 ;;
		esac
	done
}

yes_or_no "$Would you wish to fetch the latest dotfiles?" && git clone https://github.com/itZzenXX/dot-files/ && cd dot-files/

yes_or_no "$Do you wish to install .xinitrc, .bashrc, and .Xresources onto your system?" && cp .Xresources ~ && xrdb ~/.Xresources && echo "copied .Xresources" && cp .xinitrc ~ && echo "copied .xinitrc" && cp .bashrc ~ && echo "copied .bashrc"

yes_or_no "$Do you wish to install everything in .config?" && cp -r .config/* ~/.config && echo "copied .config/*"
