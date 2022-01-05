# Autoload vsc and colors:
autoload -U colors && colors	# Load colors

#HISTFILE=~/.cache/zsh/histfile
# HISTFILE=~/.local/state/zsh/history
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob	# Automatically cd into typed directory.
setopt interactive_comments
stty stop undef 	# Disable ctrl-s to freeze terminal.

# vi mode
bindkey -v

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*'  menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Delete character
bindkey "^[[P" delete-char

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# load zoxide
eval "$(zoxide init zsh --cmd j)"

# starship
eval "$(starship init zsh)"

# theme.sh
if command -v theme.sh > /dev/null; then
	[ -e ~/.cache/theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

        # Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}
zle -N last_theme
	bindkey '^O' last_theme
fi

# FZF completion and key-bindings
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

pfetch

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
