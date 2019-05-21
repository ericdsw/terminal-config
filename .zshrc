# ZSH default configuration

# Some themes need the default user
DEFAULT_USER=`whoami`

# SSH key location
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Enable Antigen
source $HOME/antigen.zsh

# Custom files
source "$HOME/zsh-custom/aliases.zsh"
source "$HOME/zsh-custom/functions.zsh"

# Apply oh-my-zsh
antigen use oh-my-zsh

# Theme definition
antigen theme geometry-zsh/geometry

# Plugin definition
antigen bundle git
antigen bundle zsh-user/zsh-autosuggestions
antigen bundle zsh-user/zsh-completions
antigen bundle zsh-user/zsh-syntax-highlighting

# OSX specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    antigen bundle osx
fi

# Apply antigen configuration
antigen apply

# Set a different folder for zsh customizations
ZSH_CUSTOM="$HOME/zsh-custom"

# Github HUB configuration
eval "$(hub alias -s)"
