# Config
Nathan's configuration files

## Pacdef
### Arch
```shell
pacdef group import $(pwd)/pacdef
pacdef package sync
```


## NuShell
### Arch
```shell
mkdir -p ~/.config/nushell
ln -s $(pwd)/nushell/config.nu ~/.config/nushell/config.nu
ln -s $(pwd)/nushell/env.nu ~/.config/nushell/env.nu
```

## Helix
### Arch
```shell
mkdir -p ~/.config/helix
ln -s $(pwd)/helix/languages.toml ~/.config/helix/languages.toml
ln -s $(pwd)/helix/config.toml ~/.config/helix/config.toml
```

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


