# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/
PLUGINS=/usr/share/zsh/plugins/

# History
PATH="/usr/local/bin:/usr/local/sbin/:$PATH"
HISTFILE=$ZDOTDIR/.zhistory

SPACESHIP_USER_SHOW=needed
ZSH_THEME="spaceship"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

# oh-my-zsh plugins
plugins=(git sudo)

#Autocompletion
autoload -U compinit && compinit

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Sources
######################################################
source $ZSH/oh-my-zsh.sh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh

# Keys to search (cat -v) show binding in teminal
bindkey '^[[1;5A' history-substring-search-up
bindkey '^[[1;5B' history-substring-search-down

# Alieses
[ -f $ZDOTDIR/aliases ] && source $ZDOTDIR/aliases
[ -f $ZDOTDIR/shortcutrc ] && source $ZDOTDIR/shortcutrc
