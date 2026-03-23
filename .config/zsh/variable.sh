#!/usr/bin/env zsh
# Ansi Color variables
ESC='\033['
COL_FORE=$ESC'38;2;'
COL_BACK=$ESC'48;2;'
COL_CLEAR=$ESC'0m'
NEWLINE=$'\n'
COL_ERR=$ESC'1;31m'

export EDITOR="nvim"
if which bat 2>/dev/null >/dev/null; then
	export PAGER='bat -l man -p --strip-ansi always'
fi
export MANPAGER="$PAGER"
