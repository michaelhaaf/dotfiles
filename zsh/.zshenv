export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config";
export XDG_CACHE_HOME="$HOME/.cache";
export XDG_DATA_HOME="$HOME/.local/share";
export XDG_STATE_HOME="$HOME/.local/share";
export DOTFILES="$HOME/dotfiles"

export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/cargo/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:$FORGIT_INSTALL_DIR/bin"

export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
# export WAYLAND_DISPLAY=""

export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export ZSH_CACHE_DIR="$ZSH/cache"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/zcompdump"

export BASH="$XDG_CONFIG_HOME/bash"
export BASH_LIBRARY="$BASH/library"
export BASH_ENV="$BASH/bashenv"

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config"

export LYNX_CFG="$XDG_CONFIG_HOME"/lynx.cfg
export LYNX_LSS="$XDG_CONFIG_HOME"/lynx.lss

### Default programs: ###
export TERMINAL="kitty"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"
