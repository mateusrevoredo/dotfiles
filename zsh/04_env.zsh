# locale
export LC_ALL=en_US.UTF-8
export LANG="en_US"

export EDITOR="vim"

# keep a ton of history. You can reset these without editing .zshrc by
# adding a file to ~/.zshrc.d.
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# declare the variable
typeset -A ZSH_HIGHLIGHT_PATTERNS
# to have commands starting with `rm -rf` in red:
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm \*' 'fg=white,bold,bg=red')

# long running processes should return time after they complete. Specified
# in seconds.
REPORTTIME=2
TIMEFMT="%U user %S system %P cpu %*Es total"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --no-height --no-reverse"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --color=always"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PKG_CONFIG_PATH="$(brew --prefix icu4c)/lib/pkgconfig:$(brew --prefix krb5)/lib/pkgconfig:$(brew --prefix libedit)/lib/pkgconfig:$(brew --prefix libxml2)/lib/pkgconfig:$(brew --prefix openssl)/lib/pkgconfig"
fi

# fix ansible issue on new macOS versions
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
