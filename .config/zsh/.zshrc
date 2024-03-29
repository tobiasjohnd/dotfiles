# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### PLUGINS ###
# p10k - a fancy prompt
# syntax highlighting
# completions
# history substring search

# check if pluggins are installed and install if needed
plugin_dir="$HOME/.config/zsh/plugins"
if [ ! -d $plugin_dir ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $plugin_dir/p10k
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $plugin_dir/syntax-highlighting
  git clone https://github.com/zsh-users/zsh-completions.git $plugin_dir/zsh-completions
  git clone https://github.com/zsh-users/zsh-autosuggestions $plugin_dir/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-history-substring-search $plugin_dir/zsh-history-substring-search
fi

## History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

## Tab selection
fpath=(path/to/zsh-completions/src $fpath) # requires zsh-competions plugin
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

## Aliases
# git bare repo alias for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.config-repo/ --work-tree=$HOME'

# TODO: make it so i can have an alias that takes me to a session selection dialogue.

# source plugins
source $plugin_dir/zsh-autosuggestions/zsh-autosuggestions.zsh
source $plugin_dir/p10k/powerlevel10k.zsh-theme
source $plugin_dir/syntax-highlighting/zsh-syntax-highlighting.zsh # needs to go at the end
source $plugin_dir/zsh-history-substring-search/zsh-history-substring-search.zsh # but this one needs to go at the ender

## Plugin config
export ZSH_AUTOSUGGEST_STRATEGY=(completion history)
source ~/.config/zsh/p10k.zsh
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export PATH="$PATH:/opt/nvim/"

if ! test -n "$TMUX"; then
    tmux attach || tmux
fi

[ -f "/home/tobyd/.ghcup/env" ] && . "/home/tobyd/.ghcup/env" # ghcup-env