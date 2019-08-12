# # Download Antigen if not already present
# if [ ! -f "~/.antigen" ]; then
#     echo "Antigen not found, installing...."
#     curl -L git.io/antigen > ~/antigen.zsh
# fi

# Link antigen
ln -s $HOME/Development/configuration/terminal-config/antigen ~/antigen

# Create symbolic links in the home directory
ln -s $HOME/Developmennt/configuration/terminal-config/.antigenrc ~/.antigenrc
ln -s $HOME/Development/configuration/terminal-config/.ackrc ~/.ackrc
ln -s $HOME/Development/configuration/terminal-config/.zshenv ~/.zshenv
ln -s $HOME/Development/configuration/terminal-config/.zshrc ~/.zshrc
ln -s $HOME/Development/configuration/terminal-config/zsh-custom ~/zsh-custom

echo "Installation completed"

