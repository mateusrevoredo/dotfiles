zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zdharma/zsh-diff-so-fancy"
zplug "rupa/z", use:z.sh
zplug "zpm-zsh/dircolors-material", as:plugin

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"
zplug "junegunn/fzf", use:"shell/*.zsh", defer:2
zplug "sharkdp/fd", as:command, from:gh-r, rename-to:fd, use:"*darwin*"

zplug romkatv/powerlevel10k, as:theme