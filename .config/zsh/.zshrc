# check if pluggins are installed and install if needed
plugin_dir="$HOME/.config/zsh/plugins"
if [ ! -d $plugin_dir ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $plugin_dir/p10k 
fi
# load plugins
source $plugin_dir/p10k/powerlevel10k.zsh-theme

# plugins
# p10k
# completions
# history substring search
# syntax highlighting

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## History
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

## Tab selection
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

## Aliases
# git bare repo alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.config-repo/ --work-tree=$HOME'

## Plugin config
# powerlevel10k config
source ~/.config/zsh/p10k.zsh

[ -f "/home/tobyd/.ghcup/env" ] && source "/home/tobyd/.ghcup/env" # ghcup-env
