#
# ~/.bashrc
#

# see https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=/home/michael/.cfg/ --work-tree=/home/michael'

alias ls='ls --color=auto'

# PS1='[\u@\h \W]\$ '
# 0;30m   Black
# 0;31m   Red
# 0;32m   Green
# 0;33m   Yellow
# 0;34m   Blue
# 0;35m   Purple
# 0;36m   Cyan
# 0;37m   White
PS1='\[\e[1;32m\]\u@\h \w ->\n\[\e[0;32m\] \@ \d\$\[\e[m\] '

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export _JAVA_AWT_WM_NONREPARENTING=1
