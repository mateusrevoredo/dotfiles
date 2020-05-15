set -e
cat vscode/extensions.txt | xargs -L1 code --install-extension