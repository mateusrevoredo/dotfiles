# Prepend $PATH without duplicates
function _prepend_path() {
	if ! $( echo "$PATH" | tr ":" "\n" | grep -qx "$1" ) ; then
		PATH="$1:$PATH"
	fi
}

#Node
[ -d "$N_PREFIX/bin" ] && _prepend_path "$N_PREFIX/bin"
# Homebrew
[ -d /usr/local/bin ] && _prepend_path "/usr/local/bin"
# GNU File, Shell, and Text utilities
[ -d /usr/local/opt/coreutils/libexec/gnubin ] && _prepend_path "/usr/local/opt/coreutils/libexec/gnubin"

export PATH