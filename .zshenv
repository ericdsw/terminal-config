# Path and Man variables
export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/bin:$PATH"

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Configurations for different OS
case `uname` in
    Darwin)
        source "$HOME/Development/configuration/terminal-config/.zshenv_mac"
        ;;
    Linux)
        source "$HOME/Development/configuration/terminal-config/.zshenv_linux"
        ;;
esac
