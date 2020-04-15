source ~/.dotfiles/zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "trapd00r/LS_COLORS"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zdharma/zsh-diff-so-fancy", as:command, use:"bin/"
zplug "rupa/z", use:z.sh

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"
zplug "junegunn/fzf", use:"shell/*.zsh", defer:2

zplug romkatv/powerlevel10k, as:theme, depth:1

zplug load

source ~/.local/share/lscolors.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# Declare the variable
typeset -A ZSH_HIGHLIGHT_PATTERNS

# To have commands starting with `rm -rf` in red:
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm \*' 'fg=white,bold,bg=red')

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --no-height --no-reverse"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --color=always"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--ansi"