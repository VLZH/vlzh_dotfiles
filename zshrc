export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

setopt HIST_FIND_NO_DUPS

plugins=(
    # tools
    git
    httpie
    gpg-agent
    aws
    # managers
    brew
    npm
    yarn
    pip
    # docker
    docker
    docker-compose
    docker-machine
    kubectl
    # python
    python
    # go
    golang
    # js
    node
    deno
    # another
    fast-syntax-highlighting # [install] git clone https://github.com/zdharma/fast-syntax-highlighting.git \ ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting

)


source $ZSH/oh-my-zsh.sh

# DOCKER
export DOCKER_BUILDKIT=1

# TIPS
alias sshpass="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"

# PATH
export PATH="$PATH:$HOME/go/bin:$HOME/Library/Python/3.11/bin"
export EDITOR="nvim"

# GO
export GOPATH=$HOME/go
export GO111MODULE=on

# BAT
export BAT_THEME="TwoDark"
alias cat="bat --style=header"

# VAULT
complete -o nospace -C /usr/local/bin/vault vault

# TYPORA
alias typora="open -a typora"
# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_OPTS="--preview '(bat --color=always {} || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_OPTS="$FZF_COMPLETION_OPTS"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!.vscode/*" --glob "!node_modules/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# EXA
if [ -n $(command -v exa) ]; then
  alias ls="exa"
  alias la="exa -lah"
  alias l="exa -lah"
  alias ll="exa -lh"
fi

# GPG
GPG_TTY=$(tty)

#
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
autoload -U compinit; compinit

autoload -U +X bashcompinit && bashcompinit
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
