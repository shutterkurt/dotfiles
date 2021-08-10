none:

update-third-party: \
	update-oh-my-zsh \
	update-zsh-syntax-highlighting \
	update-zsh-powerlevel10k

update-oh-my-zsh:
	curl -s -L -o oh-my-zsh-master.tar.gz https://github.com/robbyrussell/oh-my-zsh/archive/master.tar.gz
	chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh oh-my-zsh-master.tar.gz

update-zsh-syntax-highlighting:
	mkdir -p dot_oh-my-zsh/custom/plugins
	curl -s -L -o zsh-syntax-highlighting-master.tar.gz https://github.com/zsh-users/zsh-syntax-highlighting/archive/master.tar.gz
	chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting zsh-syntax-highlighting-master.tar.gz

update-zsh-powerlevel10k:
	mkdir -p dot_oh-my-zsh/custom/themes
	curl -s -L -o zsh-powerlevel10k.tag.gz https://github.com/romkatv/powerlevel10k/archive/v1.14.6.tar.gz
	chezmoi import --strip-components 1 --destination ${HOME}/.oh-my-zsh/custom/themes/powerlevel10k zsh-powerlevel10k.tag.gz
	