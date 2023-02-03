# Dotfiles

Install VimPlug
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install Node
```
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
```

## LunarVim Setup

Run this to set up LunarVim
```
./dotfiles/install/lvim_deps.sh
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)
```
