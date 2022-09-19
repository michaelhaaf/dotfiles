export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=1000000
export SAVEHIST=1000000

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS  
setopt HIST_SAVE_NO_DUPS  
setopt HIST_REDUCE_BLANKS  
setopt INC_APPEND_HISTORY_TIME 
setopt EXTENDED_HISTORY  

setopt NO_BEEP

ZSH_THEME="archcraft"
HYPHEN_INSENSITIVE="true"

# zstyle ':omz:update' mode reminder  
zstyle ':omz:update' mode disabled 
# zstyle ':omz:update' mode auto    
# zstyle ':omz:update' frequency 13

# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git fzf pass vi-mode 
  ripgrep ag colored-man-pages 
  zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias vimdiff='nvim -d'

# neomutt
alias nm='neomutt'

# omz
alias zshconfig="$TERMINAL -e vim $ZDOTDIR/.zshrc"
alias ohmyzsh="$TERMINAL -e ranger $ZSH"

# ls
alias l='ls -lh'
alias ll='exa -lahF'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push origin master'

# convenience program aliases
useragent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.118    0.79 Safari/537.1 Lynx"
alias lynx="lynx --useragent='$useragent'"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download audio only
alias ccat="highlight --out-format=ansi" # color cat
alias journalctl='journalctl --utc -o short-precise --no-hostname'
alias x2goclient="x2goclient --home=$HOME/.config"
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias icat="kitty +kitten icat --align=left"
alias vwiki='nvim -c VimwikiIndex'
alias vw='nvim -c VimwikiIndex'
alias mbsync="mbsync -c \"$XDG_CONFIG_HOME/isync/mbsyncrc\""
alias imapfilter="imapfilter -c \"$XDG_CONFIG_HOME/imapfilter/config.lua\""

# ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"
