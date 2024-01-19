[ -r ~/.bash_profile ] && source ~/.bash_profile

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
prompt pure

alias reload='. ~/.zshrc'

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
