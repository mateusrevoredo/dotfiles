# Global dotfiles folder
export DOTFILES="${HOME}/.dotfiles"

unsetopt HIST_BEEP
# 10 second wait if you do something that will delete everything
setopt RM_STAR_WAIT
# correct spelling for commands
setopt CORRECT
# do not correct spelling for filenames
unsetopt CORRECTALL

# locale
export LC_ALL=en_US.UTF-8
export LANG="en_US"

export EDITOR="code -w"

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

# fix ansible issue on new macOS versions
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

#FZF Color
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
