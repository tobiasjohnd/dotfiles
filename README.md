# dependencies
```bash
sudo apt install git tmux zsh
```
> or whatever the comand is on your distro. (dont care + didn't ask)

# the script to install everything
```bash
#!/usr/bin/env bash

repo_dir="$HOME/.config-repo" 
git_URL="git@github.com:TBDickenson/dotfiles.git"
config() {
  /usr/bin/git --git-dir="$repo_dir" --work-tree="$HOME" "$@"
}

git clone --bare $git_URL $repo_dir
config checkout -f
config config --local status.showUntrackedFiles no

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
```

# TODO
- [ ] get the script nicely automated
- [ ] review nvim config
  - [ ] what features do i need?
  - [ ] what is the best way to implement them? (fewer plugins = better)
  - [ ] what languages do i need to suport?
  - [ ] cmake?
  - [x] javascript?
- [ ] tmux
- [ ] note taking?
- [ ] tranmission?
