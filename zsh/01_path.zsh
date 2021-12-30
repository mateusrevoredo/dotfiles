# Prepend $PATH without duplicates
function _prepend_path() {
	if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
		PATH="$1:$PATH"
	fi
}

# Construct $PATH
# 1. Default paths
# 2. ./node_modules/.bin - shorcut to run locally installed Node bins
# 3. Custom bin folder for n, Ruby, CoreUtils, dotfiles, etc.
PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:./node_modules/.bin'
[ -d /usr/local/bin ] && _prepend_path "/usr/local/bin"
[ -d ~/dotfiles/bin ] && _prepend_path "$HOME/dotfiles/bin"
[ -d ~/bin ] && _prepend_path "$HOME/bin"
export PATH
