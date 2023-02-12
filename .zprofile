#
# ~/.zprofile
#

# Default programs:
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"
export PAGER="less"

# XDG Paths
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_STATE_HOME="$HOME"/.local/state

# Cleanup
export LESSHISTFILE=-
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}"/wget/wgetrc
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export ZDOTDIR="$HOME"/.config/zsh

export npm_config_prefix="$HOME/.local"

# History
export HISTSIZE=500000
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export SAVEHIST=500000

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\033[1;31m'
export LESS_TERMCAP_md=$'\033[1;31m'
export LESS_TERMCAP_me=$'\033[0m'
export LESS_TERMCAP_ue=$'\033[0m'
export LESS_TERMCAP_so=$'\033[1;33m'
export LESS_TERMCAP_se=$'\033[0m'
export LESS_TERMCAP_us=$'\033[1;32m'

# riverwm
# Reference -> https://unix.stackexchange.com/questions/656328/libseat-backend-seatd-c70-could-not-connect-to-socket-run-seatd-sock-no-su
#           -> https://www.reddit.com/r/voidlinux/comments/mor7n5/getting_libseat_errors_when_starting_sway/
export LIBSEAT_BACKEND=logind
