#use z with fzf
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && z "$*" && return
  cd "$(fasd_cd -d 2>&1 | fzf --nth 2.. --reverse --no-height --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}
