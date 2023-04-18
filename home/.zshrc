#! /usr/bin/bash
# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch notify
# key bindings
bindkey -e
# del, home and end
bindkey "\e[3~" delete-char
bindkey "\e[H"  beginning-of-line
bindkey "\e[F"  end-of-line
# ctrl-left and ctrl-right
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word
# ctrl-bs and ctrl-del
bindkey "\e[3;5~" kill-word
bindkey "^H" backward-kill-word
# other
bindkey '^ ' autosuggest-accept
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ariel/.zshrc'
autoload -Uz compinit && compinit
zstyle ':completion:*'  matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# End of lines added by compinstall

# ejecuta tmux si está instalado
#if [ -f /usr/bin/tmux ]; then [[ -z "$TMUX" ]] && exec tmux ; fi

# Color prompt
# Supported Colors: red, blue, green, cyan, yellow, magenta, black, & white. eg:
autoload -U colors && colors
# diferenciate user prompt from root
PROMPT="%(!.%{$fg_bold[red]%}[%m@%n] %{$fg[white]%}[%~] %{$reset_color%}.%{$fg_bold[blue]%}[%n@%m] %{$fg[white]%}[%~] %{$reset_color%})
%(?:%{$fg[white]%}%(!.# .>> )%{$reset_color%} :%{$fg[yellow]%}%(!.# .>> )%{$reset_color%})"


# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#Enable history appending instead of overwriting.
setopt appendhistory


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.


# Path
export PATH="/home/$USER/.local/bin:$PATH"
# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi


# Load ; should be last.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null


    
