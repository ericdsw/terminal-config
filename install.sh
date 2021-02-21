# Step 1: Create symlinks in the home directory for env and rc files
ln -s -f $HOME/Development/configuration/terminal-config/.antigenrc ~/.antigenrc
ln -s -f $HOME/Development/configuration/terminal-config/.ackrc ~/.ackrc
ln -s -f $HOME/Development/configuration/terminal-config/.zshenv ~/.zshenv
ln -s -f $HOME/Development/configuration/terminal-config/.zshrc ~/.zshrc
echo "Created configuration symlinks"

# Step 2: Create symlinks for global ignore files
ln -s -f $HOME/Development/configuration/terminal-config/global-ignores/.gitignore ~/.gitignore

# Note: Make sure that .config/fd/ignore exists
mkdir -p ~/.config/fd/ignore
ln -s -f $HOME/Development/configuration/terminal-config/global-ignores/.fdignore ~/.config/fd/ignore/.fdignore
echo "Created ignore symlinks"

# Step 3: Register global gitignore
git config --global core.excludesfile ~/.gitignore

# Step 4: Custom files
# Instead of linking the entire directory, we will link each file one by one to prevent
# ln from creating recursive references
mkdir -p ~/zsh-custom
ln -s -f $HOME/Development/configuration/terminal-config/zsh-custom/* ~/zsh-custom
echo "Added zsh-custom"

echo "Installation completed"

