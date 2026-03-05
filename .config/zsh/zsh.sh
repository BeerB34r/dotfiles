#!/usr/bin/env zsh
zmodload zsh/complist
autoload -Uz +X compinit && compinit
autoload -Uz +X colors && colors

# cmp
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true # . and .. in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colors in cmp
zstyle ':completion:*' squeeze-slashes false # allow /*/ expansion
setopt auto_menu menu_complete # autocmp first match
setopt auto_param_slash # when dir completed, add / instead of trailing space
setopt no_case_glob no_case_match # case insensitivity on cmp and globbing
setopt globdots # dotfiles included in globs
setopt extended_glob # more globbing! ~ # ^
stty stop undef # wtf does ^s even do????

# history
setopt append_history # as opposed to overwriting
setopt inc_append_history # history appended immediately
setopt share_history # history shared
HISTSIZE=1000000 # big milly
SAVEHIST=1000000
HISTFILE="${HOME}/.cache/zsh_history" # to cache you go!
HISTCONTROL=ignoreboth # repeat commands get ignored + ignore commands prefixed with space

# fzf
if which fzf 2>/dev/null >/dev/null; then
	source <(fzf --zsh) # fzf history widget
fi

# keeb

setopt vi

# bindkey "^a" beginning-of-line
# bindkey "^e" end-of-line
# bindkey "^H" backward-kill-word
# bindkey "^J" history-search-forward
# bindkey "^K" history-search-backward
# bindkey "^R" fzf-history-widget
