zplug 'zplug/zplug', hook-build:'zplug --self-manage'
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

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

zplug romkatv/powerlevel10k, as:theme