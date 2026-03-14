# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -e "$HOME/.zshrc_secrets" ]; then
  source $HOME/.zshrc_secrets
fi

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
    antigen bundle macos
fi

# Theme definition
# antigen theme geometry-zsh/geometry
antigen theme romkatv/powerlevel10k

# Apply antigen configuration
antigen apply

# Source all custom files found inside zsh-custom
for file in $HOME/zsh-custom/*; do
    source $file
done

# Configure the terminal's default language
export LANG="en_US.UTF-8"

# Configure searches
if type rg &> /dev/null; then
    alias rg="rg --hidden --glob '!.git'"
fi

# Register fd as the default finder command for fzf, if available
if type fd &> /dev/null; then
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
    export FZF_CTRL_T_COMMANT="$FZF_DEFAULT_COMMAND"
fi

# Register fdfind as the default finder command for fzf, if available
if type fdfind &> /dev/null; then
    export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git'
    export FZF_DEFAULT_OPTS='-m --height 50% --border'
    export FZF_CTRL_T_COMMANT="$FZF_DEFAULT_COMMAND"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2026-03-07 19:26:35
export PATH="$PATH:/Users/eric/.local/bin"
