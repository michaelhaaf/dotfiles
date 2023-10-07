# nvim
[[ -x "$(command -v nvim)" ]] && alias vim="nvim"; alias vi="nvim"; alias v="nvim"; alias vimdiff='nvim -d';

# ls
alias ll='ls -lahF'
alias l='ls -lh'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'
[[ -x "$(command -v exa)" ]] && alias ll='exa -lahF'

# fzf
alias fzfcl="export FZF_DEFAULT_COMMAND='fd . ${FZF_ARGS}'"
alias fzf-="export FZF_DEFAULT_COMMAND='fd . ${HOME} ${FZF_ARGS}'"

# ssh
[[ "$TERM" == "xterm-kitty" ]] && alias ssh="kitty +kitten ssh"
