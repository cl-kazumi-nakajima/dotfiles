# Settings
alias ll='ls -la'
alias s='source ~/.zshrc'

export PATH=/usr/local/bin:$PATH

# direnv
export EDITOR=zsh
eval "$(direnv hook zsh)"

# Git
## branch名補完
autoload -Uz compinit && compinit
# 補完候補に色つける
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"
 
# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed
 
# コマンドの打ち間違いを指摘してくれる
setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "

## prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
PROMPT='%D{%m/%d} %* [%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f %F{yellow}$%f '

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# mysql
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# openssl
export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@3/include"

# direnv
export EDITOR=zsh
eval "$(direnv hook zsh)"

# node
#export PATH=$HOME/.nodebrew/current/bin:$PATH

# postgres
#export PATH="/usr/local/opt/libpq/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/libpq/lib"
#export CPPFLAGS="-I/usr/local/opt/libpq/include"

# Load Angular CLI autocompletion.
#source <(ng completion script)
