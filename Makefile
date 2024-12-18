.PHONY: sync
sync:
	cp ~/.zshrc ./dotfiles
	cp ~/.vimrc ./dotfiles
	cp ~/.config/nix/nix.conf ./dotfiles

.PHONY: copy
copy:
	cp ./dotfiles/ ~/
