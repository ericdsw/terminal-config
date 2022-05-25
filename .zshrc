# ZSH default configuration

# Set a different folder for zsh customizations
ZSH_CUSTOM="$HOME/zsh-custom"

# Terminal color configuration
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Some themes need the default user
DEFAULT_USER=`whoami`

# SSH key location
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Source antigen configuration
ANTIGEN_PATH=$HOME/Development/configuration/terminal-config
source $ANTIGEN_PATH/antigen/antigen.zsh

# Apply oh-my-zsh
antigen use oh-my-zsh

# Plugin definition
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# OSX specific configuration
if [[ "$OSTYPE" == "darwin"* ]]; then
    antigen bundle osx
fi

# Theme definition
antigen theme geometry-zsh/geometry

# Apply antigen configuration
antigen apply

# Source all custom files found inside zsh-custom
for file in $HOME/zsh-custom/*; do
    source $file
done

# Github HUB configuration
eval "$(hub alias -s)"

# Configure language
export LANG="en_US.UTF-8"

# Configure searches
if type rg &> /dev/null; then
    alias rg="rg --hidden --glob '!.git'"
    
fi
if type fd &> /dev/null; then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
    export FZF_CTRL_T_COMMANT="$FZF_DEFAULT_COMMAND"
fi
if type fdfind &> /dev/null; then
    export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
    export FZF_CTRL_T_COMMANT="$FZF_DEFAULT_COMMAND"
fi

export SCRIPT_AES256_ENCRYPTION_KEY="3977CB97F3212865B2266EF41BAE87275A71FF30369CA0E2ABD99CA0CAA20B70"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
