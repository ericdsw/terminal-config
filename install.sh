# Create symbolic links in the home directory

# Note: if the repository is cloned in a location different from the one defined in the readme,
# update this variable to the new path.
$BASE_PATH = $HOME/Development/configurations/terminal-config

ln -s $BASE_PATH/.antigenrc ~/.antigenrc
ln -s $BASE_PATH/.ackrc ~/.ackrc
ln -s $BASE_PATH/.zshenv ~/.zshenv
ln -s $BASE_PATH/.zshrc ~/.zshrc
ln -s $BASE_PATH/zsh-custom ~/zsh-custom

echo "Installation completed"

