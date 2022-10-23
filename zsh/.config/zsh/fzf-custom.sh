
# Switch between Ripgrep launcher mode (CTRL-R) and fzf filtering mode (CTRL-F)
_fzf_custom_finder() {
  RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
  INITIAL_QUERY="${*:-}"
  FZF_DEFAULT_COMMAND="$RG_PREFIX $(printf %q "$INITIAL_QUERY")" \
  fzf --ansi \
      --color "hl:-1:underline,hl+:-1:underline:reverse" \
      --disabled --query "$INITIAL_QUERY" \
      --bind "change:reload:sleep 0.1; $RG_PREFIX {q} || true" \
      --bind "ctrl-f:unbind(change,ctrl-f)+change-prompt(2. fzf> )+enable-search+clear-query+rebind(ctrl-r)" \
      --bind "ctrl-r:unbind(ctrl-r)+change-prompt(1. ripgrep> )+disable-search+reload($RG_PREFIX {q} || true)+rebind(change,ctrl-f)" \
      --prompt '1. Ripgrep> ' \
      --delimiter : \
      --header ' CTRL-R (Ripgrep mode)  CTRL-F (fzf mode)' \
      --preview 'bat --color=always {1} --highlight-line {2}' \
      --preview-window 'right,50%,border-rounded,+{2}+3/3,~3' | cut -d":" -f1
}


__fzf_custom_join() {
  local item
  while read item; do
    echo -n "${(q)item} "
  done
}


# Modelled off of junegunn/fzf_git
__fzf_custom_init() {
  local o
  for o in "$@"; do
    eval "fzf-custom-$o-widget() { local result=\$(_fzf_custom_$o | __fzf_custom_join); zle reset-prompt; LBUFFER+=\$result }"
    eval "zle -N fzf-custom-$o-widget"
    eval "bindkey '^${o[1]}' fzf-custom-$o-widget"
  done
}


__fzf_custom_init finder

