# Path and Man variables
export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/bin:$HOME/.composer/vendor/bin:$PATH"

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Configurations for different OS
case `uname` in
    Darwin)
        source "$HOME/Development/configuration/terminal-config/.zshenv_mac"
        export PATH="$HOME/bin:/opt/homebrew/opt/openjdk/bin:$PATH"
        ;;
    Linux)
        source "$HOME/Development/configuration/terminal-config/.zshenv_linux"
        ;;
esac
