[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/options.zsh"

# plugins
# plug "zsh-users/zsh-autosuggestions"
# plug "zsh-users/zsh-syntax-highlighting"
plug "MAHcodes/distro-prompt"

# Enable colors and change prompt:
#autoload -U colors && colors
#PS1="%B%F{blue}%~%f%b"$'\n'"%B%F{white}$%f%b "

# Emacs mode
# bindkey -e

# vi mode
bindkey -v
export KEYTIMEOUT=1

cdpath=($HOME/.dotfiles/.config)

# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
for dump in "${ZDOTDIR:-$HOME}/.zcompdump"(N.mh+24); do
  compinit
done
compinit -C
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

# bindings
bindkey -s '^x' '^usource ${ZDOTDIR:-$HOME}/.zshrc\n'
bindkey -M menuselect '?' history-incremental-search-forward
bindkey -M menuselect '/' history-incremental-search-backward

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
