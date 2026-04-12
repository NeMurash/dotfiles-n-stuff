#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

~/bin/choice ~/misc/quotes.txt | cowsay -f ~/misc/cows/penger.cow

ccd() {
	clear
	cd "$1"
	ls -al --color=auto .
}

fcd() {
	cd $(fzf --walker=dir)
}

hcd() {
	cd ~
	cd $(fzf --walker=dir)
}

fccd() {
	clear
	cd $(fzf --walker=dir)
	ls -al --color=auto .
}

hccd() {
	cd ~
	clear
	cd $(fzf --walker=dir)
	ls -al --color=auto .
}

weather() {
	curl wttr.in/$1
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias die='shutdown now'
alias hi='~/bin/choice ~/misc/quotes.txt | cowsay -f ~/misc/cows/penger.cow'
alias configedit='vim ~/.config/i3/config'
alias v='vim'

PS1='\n\e[38;2;255;236;192m[\u] \e[38;2;255;194;155m-> \e[38;2;243;159;159m[\w]\e[0m\n-> ' 

export SUDO_EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
export EDITOR='/usr/bin/vim'
