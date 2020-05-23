# History
# Append their history list to the history file, rather than replace it
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
unsetopt HIST_BEEP

# Share your history across all your terminal windows
setopt SHARE_HISTORY

#Directories
# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD
# 10 second wait if you do something that will delete everything
setopt RM_STAR_WAIT
# Make cd push the old directory onto the directory stack.
setopt AUTO_PUSHD
# Don’t push multiple copies of the same directory onto the directory stack.
setopt PUSHD_IGNORE_DUPS