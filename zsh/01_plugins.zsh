# oh my zsh plugins
zplug "plugins/fzf",                            from:oh-my-zsh, defer:
zplug "plugins/sudo",                           from:oh-my-zsh
zplug "plugins/fasd",                           from:oh-my-zsh
zplug "plugins/colored-man-pages",              from:oh-my-zsh
zplug "plugins/docker",                         from:oh-my-zsh
zplug "plugins/docker-compose",                 from:oh-my-zsh
zplug "plugins/last-working-dir",               from:oh-my-zsh
zplug "plugins/macos",                          from:oh-my-zsh

# general plugins
zplug "chrissicool/zsh-256color"
zplug "DarrinTisdale/zsh-aliases-exa"
zplug "wookayin/fzf-fasd"
zplug "Aloxaf/fzf-tab"
zplug "xPMo/zsh-ls-colors"

# ls colors
zplug "trapd00r/LS_COLORS"

# prezto modules
zplug "modules/history",                        from:prezto
zplug "modules/directory",                      from:prezto
zplug "modules/terminal",                       from:prezto
zplug "modules/gnu-utility",                    from:prezto
zplug "modules/history-substring-search",       from:prezto, defer:3
zplug "modules/autosuggestions",                from:prezto, defer:2
zplug "modules/completion",                     from:prezto


zplug "zdharma-continuum/fast-syntax-highlighting", defer:3
