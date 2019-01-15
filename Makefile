DIR := $(shell pwd)
all: pacman unprivileged
unprivileged: zsh mpv ranger git vim X gdb
.PHONY: zsh mpv ranger git vim pacman X gdb
zsh: 
	ln -sf $(DIR)/.zshrc ${HOME}/.zshrc
	ln -sf $(DIR)/.zshenv ${HOME}/.zshenv
mpv:
	ln -sf $(DIR)/.config/mpv/mpv.conf ${HOME}/.config/mpv/mpv.conf
ranger:
	ln -sf $(DIR)/.config/ranger/commands.py ${HOME}/.config/ranger/commands.py
	ln -sf $(DIR)/.config/ranger/commands_full.py ${HOME}/.config/ranger/commands_full.py
	ln -sf $(DIR)/.config/ranger/rc.conf ${HOME}/.config/ranger/rc.conf
	ln -sf $(DIR)/.config/ranger/rifle.conf ${HOME}/.config/ranger/rifle.conf
	ln -sf $(DIR)/.config/ranger/scope.sh ${HOME}/.config/ranger/scope.sh
pacman:
	sudo ln -sf $(DIR)/makepkg.conf /etc/makepkg.conf
	sudo ln -sf $(DIR)/pacman.conf /etc/pacman.conf
git:
	ln -sf $(DIR)/.gitconfig ${HOME}/.gitconfig
vim:
	ln -sf $(DIR)/.vim ${HOME}/.vim
	ln -sf $(DIR)/.vimrc ${HOME}/.vimrc
X:
	ln -sf $(DIR)/.xinitrc ${HOME}/.xinitrc
gdb:
	ln -sf $(DIR)/.gdbinit ${HOME}/.gdbinit
