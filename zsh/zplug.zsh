# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zstyle ":zplug:tag" depth 1

source ~/.dotfiles/zsh/plugins.zsh

[ -f ~/.dotfiles-local/zsh/plugins.zsh ] && source ~/.dotfiles-local/zsh/plugins.zsh

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load