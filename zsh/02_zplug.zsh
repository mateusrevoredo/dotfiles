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
zplug "modules/completion",                     from:prezto
zplug "modules/history",                        from:prezto
zplug "modules/directory",                      from:prezto
zplug "modules/terminal",                       from:prezto

# oh my zsh plugins
zplug "plugins/fzf",                            from:oh-my-zsh
zplug "plugins/asdf",                           from:oh-my-zsh
zplug "plugins/sudo",                           from:oh-my-zsh
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
zplug "rupa/z",                                 use:z.sh
zplug "djui/alias-tips"
zplug "chrissicool/zsh-256color"
zplug "RobSis/zsh-completion-generator"
zplug "DarrinTisdale/zsh-aliases-exa"

# colors & Theme
zplug "romkatv/powerlevel10k",                  as:theme
zplug "zpm-zsh/material-colors",                as:plugin, use:material-colors.plugin.zsh

# install plugins if there are plugins that have not been installed
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load
