
# Adds `~/.local/bin` to $PATH
export PATH="$PATH:${$(find ~/.local/bin/ -type d -printf %p:)%%:}"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
# export XDG_RUNTIME_DIR="/run/user/1000"

export LESSHISTFILE="-"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
# export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export HISTFILE="${XDG_STATE_HOME:-$HOME/.local/state}/zsh/history"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME-$HOME/.config}/shell/inputrc"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"

export PINENTRY_BINARY="/usr/bin/pinentry-curses"
export SSH_AGENT_PID=""
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
export GPG_TTY=$(tty)
export COLORTERM="truecolor"

# Programs settings:
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --color=bg+:#3c3836,bg:#32302f,spinner:#fb4934,hl:#928374,fg:#ebdbb2,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934'
#
# export NNN_FIFO=/tmp/nnn.fifo
# export NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads/"
# export NNN_PLUG='x:!chmod +x $nnn;f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview;w:wallpaper'

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

LF_ICONS=$(sed ~/.config/lf/icons \
            -e '/^[ \t]*#/d'       \
            -e '/^[ \t]*$/d'       \
            -e 's/[ \t]\+/=/g'     \
            -e 's/$/ /')
LF_ICONS=${LF_ICONS//$'\n'/:}
export LF_ICONS
