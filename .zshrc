source ~/.config/zsh/variable.sh
source ~/.config/zsh/aliase.sh
source ~/.config/zsh/command.sh
source ~/.config/zsh/prompt.sh
source ~/.config/zsh/codam.sh

export STOW_DIR=$HOME/.local/stow
export PATH=$HOME/.local/bin_priority:$HOME/.local/bin:$HOME/.local/sbin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=$HOME/.local/lib64:$HOME/.local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_RUN_PATH=$HOME/.local/lib64:$HOME/.local/lib${LD_RUN_PATH:+:${LD_RUN_PATH}}
export PKG_CONFIG_PATH=$HOME/.local/lib64/pkgconfig:$HOME/.local/lib/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}
export MANPATH=$HOME/.local/man:$HOME/.local/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man${MANPATH:+:${MANPATH}}
export ACLOCAL_PATH=$HOME/.local/share/aclocal${ACLOCAL_PATH:+:${ACLOCAL_PATH}}
export CPATH=$HOME/.local/include${CPATH:+:${CPATH}}
export PATH=$PATH:$HOME/.cargo/bin

undecorate
