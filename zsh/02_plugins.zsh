# check if zplug is installed
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

zstyle ":zplug:tag" depth 1

# load zplug
source ~/.zplug/init.zsh

# oh my zsh plugins
zplug "plugins/fzf",                            from:oh-my-zsh, defer:1
zplug "plugins/fasd",                           from:oh-my-zsh
zplug "plugins/sudo",                           from:oh-my-zsh
zplug "plugins/colored-man-pages",              from:oh-my-zsh
zplug "plugins/docker",                         from:oh-my-zsh
zplug "plugins/docker-compose",                 from:oh-my-zsh
zplug "plugins/last-working-dir",               from:oh-my-zsh
zplug "plugins/macos",                          from:oh-my-zsh

# general plugins
zplug "chrissicool/zsh-256color"
zplug "DarrinTisdale/zsh-aliases-exa"
zplug "xPMo/zsh-ls-colors"
zplug "wookayin/fzf-fasd",                          defer:1, on:"plugins/fasd"
zplug "Aloxaf/fzf-tab",                             defer:1, on:"plugins/fzf"
zplug "zsh-users/zsh-completions",                  defer:0
zplug "zsh-users/zsh-autosuggestions",              defer:2, on:"zsh-users/zsh-completions"
zplug "zdharma-continuum/fast-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search",     defer:3, on:"zdharma-continuum/fast-syntax-highlighting"

# ls colors
zplug "trapd00r/LS_COLORS"

# prezto modules
zplug "modules/history",                        from:prezto
zplug "modules/directory",                      from:prezto
zplug "modules/terminal",                       from:prezto
zplug "modules/gnu-utility",                    from:prezto

zplug load
