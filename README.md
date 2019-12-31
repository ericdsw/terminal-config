# Description

My current terminal configuration using oh-my-zsh on top of zsh.

This project uses [Antigen](https://github.com/zsh-users/antigen) as it's plugin manager, which will be automatically installed if not already present in the system.

## Installation

To install, simply follow these steps:
- Update local antigen git submodule with the `git submodule update` command.
- Run the `./install.sh` script.
- Run `source ~/.zshrc` to refresh the zsh configuration.

Note: you must have zsh as your active shell for the installation script to work.

## Notes

This project must be cloned in the following path for it to work out of the box: `~/Development/configurations/terminal-config`.

To apply configurations specific to an OS, use the `.{filename}_{OS}` versions (example: `.zshenv_linux` will be applied to `.zshenv` only if the `uname` command returns "Linux" for the current OS.
