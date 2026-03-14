# Quick navigatn
alias goto:projects="cd ~/Development/projects"
alias goto:godot="cd ~/Development/projects/godot"
alias goto:android="cd ~/Development/projects/android"
alias goto:javascript="cd ~/Development/projects/javascript"
alias goto:php="cd ~/Development/projects/php"
alias goto:configurations="cd ~/Development/configuration"

# ZSH quick action map
alias zshreload="source ~/.zshrc"

# Change between arm64 and x86_64 architectures in the terminal session.
# Only available in apple sillicon macs.
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias arm="env /usr/bin/arch -arm64 /bin/zsh —-login"
    alias intel="env /usr/bin/arch -x86_64 /bin/zsh —-login"
fi
