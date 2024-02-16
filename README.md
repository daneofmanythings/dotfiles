# DOTFILES

This repo contains the dotfiles for my current desktop

## DEPENDENCIES

```
sudo apt install git stow
```
note: use the package manager for your distro.

## INSTALLATION

- Check out this repo into your $HOME directory
```
git clone git@github.com/daneofmanythings/dotfiles.git
cd dotfiles
```

- Use GNU stow to create the symlinks

...to link all the configs
```
stow */
```
...or link an individual config (ex. with zsh)
```
stow zsh
```
