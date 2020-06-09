# Check if zplug is installed
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/zplug
  zplug update --self
fi

source ~/.zplug/init.zsh

zstyle ":zplug:tag" depth 1

source ~/.dotfiles/zsh/plugins.zsh

LOCAL_PLUGINS="$LOCAL_CONFIG/zsh/plugins.zsh"
[ -f $LOCAL_PLUGINS ] && source $LOCAL_PLUGINS

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load
