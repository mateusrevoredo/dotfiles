# check if zplug is installed
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/zplug
  zplug update --self
fi

# load zplug
source ~/.zplug/init.zsh

zstyle ":zplug:tag" depth 1

zplug "zplug/zplug",                            hook-build:'zplug --self-manage'

# prezto modules
zplug "modules/history",                        from:prezto
zplug "modules/directory",                      from:prezto
zplug "modules/terminal",                       from:prezto
zplug "modules/gnu-utility",                    from:prezto, if:"[[ $OSTYPE == *darwin* ]]"

# oh my zsh lib
zplug "lib/completion",                         from:oh-my-zsh
zplug "lib/clipboard",                          from:oh-my-zsh

# oh my zsh plugins
zplug "plugins/fzf",                            from:oh-my-zsh
zplug "plugins/asdf",                           from:oh-my-zsh
zplug "plugins/sudo",                           from:oh-my-zsh
zplug "plugins/fasd",                           from:oh-my-zsh
zplug "plugins/colored-man-pages",              from:oh-my-zsh
zplug "plugins/docker",                         from:oh-my-zsh
zplug "plugins/docker-compose",                 from:oh-my-zsh
zplug "plugins/last-working-dir",               from:oh-my-zsh
zplug "plugins/osx",                            from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

# general plugins
zplug "djui/alias-tips"
zplug "chrissicool/zsh-256color"
zplug "RobSis/zsh-completion-generator"
zplug "DarrinTisdale/zsh-aliases-exa"
zplug "wookayin/fzf-fasd"

# binaries
zplug "jesseduffield/lazygit", \
    from:gh-r, \
    as:command, \
    rename-to:lazygit, \
    use:"*$(uname -s)*x86_64*"

zplug "x-motemen/ghq", \
    from:gh-r, \
    as:command, \
    rename-to:ghq

zplug "clvv/fasd",                              as:command
zplug "so-fancy/diff-so-fancy",                 as:command

# colors & Theme
zplug "romkatv/powerlevel10k",                  as:theme
zplug "zpm-zsh/material-colors",                as:plugin, use:material-colors.plugin.zsh

# install plugins if there are plugins that have not been installed
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load
