#!/usr/bin/env bash
#

cd "$(dirname "$0")/.."
DOTFILES=$(pwd -P)

link_file () {
	local src=$1 dst=$2

	local overwrite=
	local backup=
	local skip=
	local action=

	if [ -f "$dst" ] || [ -d "$dst" ] || [ -L "$dst" ]
	then
		echo 'in here'
	fi
}


install_dotfiles () {
	echo '...installing dotfiles'

	local overwrite_all=false backup_all=false skip_all=false

	find -H "$DOTFILES" -maxdepth 2 -name 'links.prop' | while read linkfile
	do
		cat "$linkfile" | while read line
		do
			local src dst dir
			src=$(eval echo "$line" | cut -d '=' -f 1)
			dst=$(eval echo "$line" | cut -d '=' -f 2)
			dir=$(dirname $dst)

			mkdir -p "$dir"

            echo "copying $src to $dir"
			cp -r "$src" "$dir"
		done
	done
}

create_env_file () {
	if test -f "$HOME/.env.sh"; then
		echo "$HOME/.env.sh file already exists, skipping"
	else
		echo "export DOTFILES=$DOTFILES" > $HOME/.env.sh
		echo 'created ~/.env.sh'
	fi
}

install_dotfiles
create_env_file

echo '...successfully installed'
