#!/bin/bash

# Make PS1 the way I like it
export PS1="[USWEST2] \u@\h:\w\$ "

# This gives you date/timestamps in command line history
export HISTTIMEFORMAT="%F %T "

# Fix garbage characters in man pages
export LC_ALL=C

# Colorize grep (green)
export GREP_COLOR='1;32'
alias grep='grep --color=auto'

# Fix garbage characters in the `tree` command
alias tree='tree --charset=ASCII'
