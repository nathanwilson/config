# Config
Nathan's configuration files

## Alacritty
### Arch
```shell
mkdir -p ~/.config/alacritty
ln -s $(pwd)/alacritty/arch.alacritty.toml ~/.config/alacritty/alacritty.toml
```

### MacOS
```shell
mkdir -p ~/.config/alacritty
ln -s $(pwd)/alacritty/macos.alacritty.toml ~/.config/alacritty/alacritty.toml
```

## NeoVim

- Dependencies
```shell
# arch linux
pacman -S neovim nodejs node <todo more - fzf?>

# macos
brew install ripgrep
```

- Setup
```shell
# arch linux
ln -s $(pwd)/neovim ~/.config/nvim
```


