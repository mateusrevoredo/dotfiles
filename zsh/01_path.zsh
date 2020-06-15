typeset -U path

if [[ "$OSTYPE" == "darwin"* ]]; then
  path=(
    #Homebrew
    /usr/local/bin
    #GNU Bison (Necessary on macOS for https://github.com/asdf-community/asdf-php
    /usr/local/opt/bison/bin
    # System Path
    $path
    )
fi
