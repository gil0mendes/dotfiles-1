export ZSH="/home/filip/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

plugins=(git vi-mode)

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias rs='redshift -l 50:20 &'
alias v="nvim "

#export PATH=~/SSD/fuchsia/.jiri_root/bin:$PATH
#source ~/SSD/fuchsia/scripts/fx-env.sh

source $ZSH/oh-my-zsh.sh 
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

