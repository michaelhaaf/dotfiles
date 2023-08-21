# nvim
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias vimdiff='nvim -d'

# ls
alias l='ls -lh'
alias ll='exa -lahF'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# fzf
alias fzfcl="export FZF_DEFAULT_COMMAND='fd . ${FZF_ARGS}'"
alias fzf-="export FZF_DEFAULT_COMMAND='fd . ${HOME} ${FZF_ARGS}'"

# ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"
