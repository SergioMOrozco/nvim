# How To Get My Neovim Configuration Working

## Install Neovim

```
sudo apt-get install neovim
```

## Setup Neovim For Configuration

- Neovim configuration reads from a file located at:

	- ~/.config/nvim/

```
mkdir ~/.config
```
- This repository is titled 'nvim', so you just need to clone this repository inside .config.

```
cd ~/.config
git clone https://github.com/FezTheImmigrant/nvim.git
```

### Plugin Manager

- I use vim-plug as my plugin manager, which is install by default when you open nvim.


### RipGrep

- I use RipGrep which is a nice plugin for finding words in files, but it has to be install on your system doing the following for debian machines:

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb
```
