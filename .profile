export EDITOR=helix
export PAGER=less
export LANG=en_US.UTF-8
export LC_TIME=en_DK.UTF-8
export POSIXLY_CORRECT=1
export _POSIX2_VERSION=200809
export HISTSIZE=221012
export ENV=$HOME/.env

export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export GOPATH=$XDG_DATA_HOME/go
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export PNPM_HOME=$XDG_DATA_HOME/pnpm

export PATH=$PATH:$GOPATH/bin:$RUSTUP_HOME/bin:$CARGO_HOME/bin:$PNPM_HOME/bin
export PATH=$HOME/.local/bin/$(uname -s):$HOME/.local/bin:$PATH

[ -f $XDG_CONFIG_HOME/$(uname -s).profile ] && . $XDG_CONFIG_HOME/$(uname -s).profile
[ -f $XDG_CONFIG_HOME/$(uname -n).profile ] && . $XDG_CONFIG_HOME/$(uname -n).profile
