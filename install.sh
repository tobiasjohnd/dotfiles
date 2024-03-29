#!/usr/bin/env bash

# TODO: see if i can automate ghcup installation + xmonad setup

repo_dir="$HOME/.config-repo" 
git_URL="git@github.com:TBDickenson/dotfiles.git"
config() {
  /usr/bin/git --git-dir="$repo_dir" --work-tree="$HOME" "$@"
}

git clone --recurse-submodules --bare $git_URL $repo_dir
config checkout -f
config config --local status.showUntrackedFiles no

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
