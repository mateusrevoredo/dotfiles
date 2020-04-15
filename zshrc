# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

declare -a files=(
	                "$HOME/.dotfiles/zsh/path.zsh"
	                "$HOME/.dotfiles/zsh/config.zsh"
	                "$HOME/.dotfiles/zsh/completions.zsh"
                    "$HOME/.dotfiles/zsh/plugins.zsh"
                    "$HOME/.dotfiles/zsh/aliases.zsh"
                    "$HOME/.dotfiles/zsh/functions.zsh"
                 )

for file in "${files[@]}"
do
  source $file
  [[ -f $file.local ]] && source $file.local   
done