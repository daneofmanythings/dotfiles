# DOTFILES

This repo contains the dotfiles for my current desktop

## DEPENDENCIES

```
sudo apt install git stow
```
note: use the package manager for your distro.

## INSTALLATION

- Check out this repo into your $HOME directory. You can place it into any
directory, but the stow command will have an extra flag. Stow defaults to
symlinking in the parent of the pwd unless the 'target' flag is specified.
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

...if you cloned the repo somewhere other than $HOME
```
stow --target=${HOME} */
```
