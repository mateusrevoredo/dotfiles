#Find better way to handle loading external files
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.dotfiles/zsh/preload.zsh
source ~/.dotfiles/zsh/env.zsh
source ~/.dotfiles/zsh/path.zsh
source ~/.dotfiles/zsh/config.zsh
source ~/.dotfiles/zsh/zplug.zsh
source ~/.dotfiles/zsh/powerline10k.zsh
source ~/.dotfiles/zsh/completions.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/functions.zsh
