# Locale
export LC_ALL=en_US.UTF-8
export LANG="en_US"

export EDITOR="vim"
export TERM="xterm-256color"

# n, Node version manager (http://git.io/n-install-repo)
export N_PREFIX="$HOME/n"

# Keep a ton of history. You can reset these without editing .zshrc by
# adding a file to ~/.zshrc.d.
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# Declare the variable
typeset -A ZSH_HIGHLIGHT_PATTERNS

# To have commands starting with `rm -rf` in red:
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm \*' 'fg=white,bold,bg=red')

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --no-height --no-reverse"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --color=always"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

LOCAL_ENV="$LOCAL_CONFIG/zsh/env.zsh"
[ -f $LOCAL_ENV ] && source $LOCAL_ENV