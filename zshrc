# check if zplug is installed
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

zstyle ":zplug:tag" depth 1

# load zplug
source ~/.zplug/init.zsh

for config_file ($HOME/.dotfiles/zsh/*.zsh)
do
  source $config_file
done

zplug load
