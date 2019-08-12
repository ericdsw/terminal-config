# Antigen is present as a submodule of this repo, so adding it to the
# system is a matter of linking it in the home directory
ln -s $HOME/Development/configuration/terminal-config/antigen ~/antigen

# Create symbolic links in the home directory
ln -s $HOME/Developmennt/configuration/terminal-config/.antigenrc ~/.antigenrc
ln -s $HOME/Development/configuration/terminal-config/.ackrc ~/.ackrc
ln -s $HOME/Development/configuration/terminal-config/.zshenv ~/.zshenv
ln -s $HOME/Development/configuration/terminal-config/.zshrc ~/.zshrc
ln -s $HOME/Development/configuration/terminal-config/zsh-custom ~/zsh-custom

echo "Installation completed"

