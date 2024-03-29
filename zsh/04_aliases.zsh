alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"
# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"
# Show/hide hidden files in Finder
alias updatedb="LC_ALL='C' sudo updatedb"
alias of="open -a Finder ./"
alias cat='bat --paging=never'
alias lg='lazygit'
alias dotfiles='code ~/.dotfiles'
