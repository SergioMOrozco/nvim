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

- I use vim-plug as my plugin manager, so you'll need to install it.

```
curl -fLo ~/.local/share/nvim/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- if you ***cd*** into ~/.local/share/nvim , you'll find a ***plug.vim*** file. We are going to move it.

```
cd ~/.local/share/nvim
mkdir site
mkdir site/autoload
mv plug.vim site/autoload/plug.vim
```
### Install Plugins

- Finally you should open up neovim and type:
	- :PlugInstall


 
