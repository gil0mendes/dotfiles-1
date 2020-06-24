export ZSH="/home/filip/.oh-my-zsh"

plugins=(vi-mode)
#ZSH_THEME=robbyrussell

setopt autocd		# Automatically cd into typed directory.
alias ls='ls --color=auto'
alias pacman='sudo pacman'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
alias rs='redshift -l 50:20 &'
alias v="nvim "

#export PATH=~/SSD/fuchsia/.jiri_root/bin:$PATH
#source ~/SSD/fuchsia/scripts/fx-env.sh


# SET UP PROMPT WITH GIT STATUS
autoload -U colors && colors	# Load colors
source ~/.local/bin/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%"
#PS2=" #precmd () { __git_ps1 "$PS1" "%s$PS2" }
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}% %c$(__git_ps1 " %s")%{$fg[red]%}]%{$reset_color%}$%b "

source $ZSH/oh-my-zsh.sh 
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

