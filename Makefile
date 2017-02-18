DIR := $(shell pwd)
all: pacman unprivileged
unprivileged: zsh mpv git vim X
.PHONY: zsh mpv git vim pacman X
zsh: 
	ln -sf $(DIR)/.zshrc ${HOME}/.zshrc
	ln -sf $(DIR)/.zshenv ${HOME}/.zshenv
mpv:
	ln -sf $(DIR)/.config/mpv/mpv.conf ${HOME}/.config/mpv/mpv.conf
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
