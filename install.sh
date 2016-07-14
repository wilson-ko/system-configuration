#!/bin/sh

function prompt_removal {
	while true; do
		read -p "Found old configuration in $1. Remove it? (y/n)? " yn
		case $yn in
			[Yy]* ) rm -rf $1; break;;
			[Nn]* ) mv $1 $1-old; echo "Old configuration moved to $1-old"; exit;;
			* ) echo "Please answer yes or no.";;
		esac
	done
}

function process_configuration {
	if [ -e "$2" ]; then
		prompt_removal "$2"
	fi
	ln -s "$1" "$2"
}

function install {
	# Add symlink to i3 configuration.
	process_configuration "$(pwd)/i3" "${HOME}/.i3"

	# Add symlinks to Vim configuration.
	process_configuration "$(pwd)/vimrc" "${HOME}/.vimrc"
}

install
