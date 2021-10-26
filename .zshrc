[ -r ~/.bash_profile ] && source ~/.bash_profile


# zstyle ':prezto:module' pmodule' \
#   'syntax-highlighting'

# zstyle ':prezto:module:syntax-highlighting' color 'yes'

# zstyle ':prezto:module:syntax-highlighting' highlighters \
#   'main' \
#   'brackets' \
#   'pattern' \
#   'line' \
#   'cursor' \
#   'root'

autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
prompt pure

alias reload='. ~/.zshrc'

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' menu select


autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

zstyle ':prezto:module:autosuggestions' color 'yes'
