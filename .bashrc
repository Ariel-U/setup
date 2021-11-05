#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
if [[ ${EUID} == "0" ]] ; then # Rojo si el usuario es root
    PS1='\e[1;31m[\u@\h] \e[1;37m[\w]\e[0m'
    PS1+='\n\$ '
else                           # Azul si el usuario no es root
    PS1='\e[1;34m[\u@\h] \e[1;37m[\w]\e[0m'
    PS1+='\n\$ '
fi

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Definir editor
if [ -f /bin/vim ]; then
    export EDITOR="vim"
elif [ -f /bin/nano ]; then
    export EDITOR="nano"
fi

# History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.bash_history

# corregir errores simples al usar cd
shopt -s cdspell

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;
