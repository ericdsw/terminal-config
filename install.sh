# Step 1: Create symlinks in the home directory for env and rc files
ln -s -f $HOME/Development/configuration/terminal-config/.antigenrc ~/.antigenrc
ln -s -f $HOME/Development/configuration/terminal-config/.ackrc ~/.ackrc
ln -s -f $HOME/Development/configuration/terminal-config/.zshenv ~/.zshenv
ln -s -f $HOME/Development/configuration/terminal-config/.zshrc ~/.zshrc
ln -s -f $HOME/Development/configuration/terminal-config/zsh-custom ~/zsh-custom
echo "Created configuration symlinks"

# Step 2: Create symlinks for global ignore files
ln -s -f $HOME/Development/configuration/terminal-config/global-ignores/.gitignore ~/.gitignore

# Note: Make sure that .config/fd/ignore exists
mkdir -p ~/.config/fd/ignore
ln -s -f $HOME/Development/configuration/terminal-config/global-ignores/.fdignore ~/.config/fd/ignore/.fdignore
echo "Created ignore symlinks"

# Step 3: Register global gitignore
git config --global core.excludesfile ~/.gitignore

echo "Installation completed"

