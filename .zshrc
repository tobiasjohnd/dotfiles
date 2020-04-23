
# bootsrap zplug
[ -f ~/.zplug/init.zsh ] || curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
source $HOME/.zplug/init.zsh

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
alias config='/usr/bin/git --git-dir=/home/toby/.dotfiles/shared/ --work-tree=/home/toby'
alias config_local='/usr/bin/git --git-dir=/home/toby/.dotfiles/local/ --work-tree=/home/toby'
# doom emacs intsall utility
alias doom="~/.emacs.d/bin/doom"

## Plugin config
# powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# intro commands
neofetch
