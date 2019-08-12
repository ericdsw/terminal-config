# ZSH default configuration

# Some themes need the default user
DEFAULT_USER=`whoami`

# SSH key location
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Source antigen configuration
source ~/antigen/antigen.zsh
antigen init .antigenrc

# Custom files
source "$HOME/zsh-custom/aliases.zsh"
source "$HOME/zsh-custom/functions.zsh"

# # Apply oh-my-zsh
# antigen use oh-my-zsh

# # Plugin definition
# antigen bundle git
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-completions

# # OSX specific configuration
# if [[ "$OSTYPE" == "darwin"* ]]; then
#     antigen bundle osx
# fi

# # Theme definition
# antigen theme geometry-zsh/geometry

# # Apply antigen configuration
# antigen apply

# Set a different folder for zsh customizations
ZSH_CUSTOM="$HOME/zsh-custom"

# Github HUB configuration
eval "$(hub alias -s)"

# Configure language
export LANG="en_US.UTF-8"

export NVM_DIR="/Users/ericdesedas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

