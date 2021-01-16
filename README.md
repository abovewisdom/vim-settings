# Overview
This repo is a part of my dot files https://github.com/discocorg/dotfiles repo but can be used independently. 

# Installation

Dependencies
```
brew install the_silver_searcher
brew install fzf
brew install tidy-html5
brew install fasd
```
Go to ~/.vim folder Run this: 
```
git clone https://github.com/abovewisdom/vim-setup.git
```
Add this line to .vimrc profile in home directory: 
```
runtime vimrc
```
Pull in the submodules by going to ~/.vim and running:
(Note: when installing new plugins you will need to run these new commands in each submodules folder)
```
git submodule init
git submodule update
```
Run these commands to change the merge tool to diffconflicts(a plugin to vim)

```
git config --global merge.tool diffconflicts
git config --global mergetool.diffconflicts.cmd 'vim -c DiffConflicts "$MERGED" "$BASE" "$LOCAL" "$REMOTE"'
git config --global mergetool.diffconflicts.trustExitCode true
git config --global mergetool.keepBackup false
```

Add new plugins or submodules by going to the ~/.vim/pack/my-plugins/start/ and adding:
```
git submodule add [INSERT GIT URL]
```
Run this command to pull all of the files down for the submodules:
```
git submodule update --init --recursive
```
Add help files to ~/.vim/doc and run: 
```
:helptags ~/.vim/doc
```
Follow these instructions to install ctags:
https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
