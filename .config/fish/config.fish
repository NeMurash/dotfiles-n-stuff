source /usr/share/cachyos-fish-config/cachyos-config.fish

function fish_greeting
  random choice $(cat ~/misc/quotes.txt) | cowsay -f ~/misc/cows/penger.cow
end

function ccd
  clear
  cd "$argv[1]"
  ls -al --color=auto .
end

function fccd
  clear
  cd $(fzf --walker=dir)
  ls -al --color=auto .
end

function hi
  random choice $(cat ~/misc/quotes.txt) | cowsay -f ~/misc/cows/penger.cow
end

function pacman_install_and_log
  sudo pacman -S $argv[1] && echo "Pacman - $argv[1]" >> ~/Documents/installs.txt
end

function flatpak_install_and_log
  flatpak install $argv[1] && echo "Flatpak - $argv[1]" >> ~/Documents/installs.txt
end

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias die="exit"
alias NOW="sudo"
alias v="nvim"
alias x="startx"
alias n="nnn"
alias nb="./nob"

function fish_prompt
  set_color 5bcefa
  printf "[$(pwd)]\n"
  set_color normal
  printf "λ> "
end

function fish_right_prompt
  set_color f5a9b8
  printf "[$(date +%r)]"
  set_color normal
end

export SUDO_EDITOR="nvim"
export VISUAL="nvim"
export EDITOR="nvim"
