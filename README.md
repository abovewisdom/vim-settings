# Installation

Dependencies
```
brew install the_silver_searcher
brew install fzf
brew install tidy-html5
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
