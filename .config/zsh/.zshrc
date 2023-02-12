[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/options.zsh"

# plugins
# plug "zsh-users/zsh-autosuggestions"
# plug "zsh-users/zsh-syntax-highlighting"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%F{blue}%~%f%b"$'\n'"%B%F{white}$%f%b "

# Emacs mode
bindkey -e

cdpath=($HOME/.dotfiles/.config)

# Command completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
_comp_options+=(globdots)		# Include hidden files.
zmodload zsh/complist
DISABLE_UPDATE_PROMPT=true

# Shortcut to exit shell on partial command line
# By default, Ctrl+d will not close your shell if the command line is filled, this fixes it: 
exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh

# disable the underline when changing directories with cd
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none') # Disbable paste highlighting.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
