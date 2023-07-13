# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true
#PS1="\d👉\t⭐\w 😍>"
PS1="\e[1;102m\e[1;97m\d>\A>\w>\$\e[0m"
#xterm-color|*-256color) color_prompt=yes;;
#xterm-color|*-256color|xterm-kitty) color_prompt=yes;;

# Kitty Shell Integration STARTS
if test -n "$KITTY_INSTALLATION_DIR"; then
    export KITTY_SHELL_INTEGRATION="enabled"
        source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi
# Kitty Shell Integration ENDS 

# All Aliases
#
alias i="sudo zypper in"
alias up="sudo zypper up"
alias dup="sudo zypper dup"
alias s="sudo zypper search"
alias r="sudo zypper rm"
alias l="ls -al -C --color=auto"
alias ..="cd.."
alias ~="cd ~"
alias c="clear"
alias e="exit" 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
