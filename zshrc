# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # tools
    git
    httpie
    aws
    ansible
    gpg-agent
    # managers
    brew
    npm
    yarn
    pip
    # docker
    docker
    docker-compose
    # python
    django
    python
    poetry
    # go
    golang
    # js
    node
    gulp
    # another
    fast-syntax-highlighting # [install] git clone https://github.com/zdharma/fast-syntax-highlighting.git \ ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
    zsh-autosuggestions # [install] git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

)
setopt HIST_FIND_NO_DUPS

source $ZSH/oh-my-zsh.sh

# docker
alias dk="docker"
alias dkc="docker-compose"
alias dkm="docker-machine"
# 
alias vim="nvim -u NORC"
# tips
alias sshpass="ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no"
# PATH
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.yarn/bin:$HOME/Library/Python/3.6/bin
export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
# ALACRITTY
alias alacritty-colorscheme="alacritty-colorscheme -C ~/.alacritty_themes"
alias alacritty-colorscheme-dracula="alacritty-colorscheme -t dracula.yaml"
alias alacritty-colorscheme-gruvbox_dark="alacritty-colorscheme -t gruvbox_dark.yaml"
alias alacritty-colorscheme-gruvbox_light="alacritty-colorscheme -t gruvbox_light.yaml"
alias alacritty-colorscheme-solarized_light="alacritty-colorscheme -t solarized_light.yaml"
# GO
export GOPATH=$HOME/go
# BAT
export BAT_THEME="TwoDark"
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
# PANDOC
rmd () {
  pandoc $1 | lynx -stdin
}

toggle_node_modules() {
  if [ -d node_modules ]
  then
    mv node_modules _node_modules
  elif [ -d _node_modules ]
  then
    mv _node_modules node_modules
  fi
}

# GPG
GPG_TTY=$(tty)
