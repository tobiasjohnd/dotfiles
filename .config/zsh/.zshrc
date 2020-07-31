# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# bootsrap zplug
export ZPLUG_HOME=$HOME/.config/zsh/.zplug
[ -f ~/.config/zsh/.zplug/init.zsh ] || curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source $HOME/.config/zsh/.zplug/init.zsh

# declare plugins
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "romkatv/powerlevel10k", as:theme, depth:1
zplug "softmoth/zsh-vim-mode"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# load/install plugins
zplug check || zplug install
zplug load

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
alias config='/usr/bin/git --git-dir=/home/toby/.config-repos/main/ --work-tree=/home/toby'

## Plugin config
# powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
