#!/usr/bin/env zsh

warn() {
	echo "[WARN]: $@" >&2
}

_sourceExisting() {
	if [ -e "$1" ]; then
		. "$1" || warn "failed to source $1"
	elif [ "$2" = "warn" ]; then
		echo "[WARN]: $1 doesnt exist" >&2
	fi
}

_sourceExisting "${HOME}/.path.sh"
_sourceExisting "${HOME}/.cargo/env"
_sourceExisting "${HOME}/.config/zsh/zsh.sh" warn
_sourceExisting "${HOME}/.config/zsh/variable.sh" warn
_sourceExisting "${HOME}/.config/zsh/aliase.sh" warn
_sourceExisting "${HOME}/.config/zsh/command.sh" warn
_sourceExisting "${HOME}/.config/zsh/prompt.sh" warn
[ "`whoami`" = "mde-beer" ] && _sourceExisting "${HOME}/.config/zsh/codam.sh"
_sourceExisting "${HOME}/.path.sh"

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:${HOME}/.local/bin
export PATH="$PATH:$(go env GOPATH)/bin"
export LIBRARY_PATH=$LIBRARY_PATH:/opt/cheerp/lib
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/opt/cheerp/include:/opt/cheerp/include/client
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/cheerp/include/c++/v1:$C_INCLUDE_PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
