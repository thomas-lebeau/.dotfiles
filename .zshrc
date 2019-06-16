[ -r ~/.bash_profile ] && source ~/.bash_profile

autoload -U promptinit; promptinit
prompt pure

alias reload!='. ~/.zshrc'

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
