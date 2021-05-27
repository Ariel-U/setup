# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ariel/.zshrc'
autoload -Uz compinit && compinit
zstyle ':completion:*'  matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# End of lines added by compinstall

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=~/.cache/history
# Enable history appending instead of overwriting. 
setopt appendhistory


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.


# Custom ZSH Binds
bindkey '^ ' autosuggest-accept


# color prompt
# Supported Colors:
# red, blue, green, cyan, yellow, magenta, black, & white. eg:
autoload -U colors && colors
# diferenciate user prompt from root  
PROMPT="%(!.%{$fg_bold[red]%}%m@%n %{$fg[blue]%}%~ %{$reset_color%}.%{$fg_bold[green]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%})
%(?:%{$fg[blue]%}%(!.# .$ ) :%{$fg[red]%}%(!.# .$ )" 
# basic git integration
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_ # rigth side prompt
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# cargar aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi


# Load ; should be last.
if [ -f /usr/bin/pacman ]; then
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
fi
if [ -f /usr/bin/apt ]; then
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
fi


