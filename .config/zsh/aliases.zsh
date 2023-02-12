alias rm="rm -i"
alias cp="cp -iv"
alias mv="mv -i"
alias mkdir="mkdir -pv"

# ls family
alias ls="ls --color=auto"
alias l="ls -A --color=auto"
alias e="exa -laF --group-directories-first"
alias lsa="ls -A | wc -l"

# Colorize commands when possible.
alias grep="grep --color=auto"
alias diff="diff --color=auto"

# Programs
alias tree="tree -Ca"
alias v="nvim"
alias ncmpcpp="ncmpcpp --config=~/.config/ncmpcpp/config"

# Make mount command output pretty and human readable format
alias mount="mount | column -t"

alias df='df -h -x devtmpfs -x tmpfs -x usbfs -x loop'
alias free='free -m -h'

# Quickly see the hogger in the directory
alias dust='du -hd1 | sort -hr | sed "s/.\///g" | sed "/\.$/d"'
