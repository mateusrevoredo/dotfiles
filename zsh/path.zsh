# Prepend $PATH without duplicates
function _prepend_path() {
	if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
		PATH="$1:$PATH"
	fi
}

# Homebrew
[ -d /usr/local/bin ] && _prepend_path "/usr/local/bin"
# GNU File, Shell, and Text utilities
[ -d /usr/local/opt/coreutils/libexec/gnubin ] && _prepend_path "/usr/local/opt/coreutils/libexec/gnubin"
# PHPBrew Global Packages
# [ -d ~/.phpbrew/bin ] && _prepend_path "$HOME/.phpbrew/bin"

export PATH