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

# Set a different folder for zsh customizations
ZSH_CUSTOM="$HOME/zsh-custom"

# Github HUB configuration
eval "$(hub alias -s)"

# Configure language
export LANG="en_US.UTF-8"

export NVM_DIR="/Users/ericdesedas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

