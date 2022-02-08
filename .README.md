# my_dotfiles

based on: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

git clone --bare git@github.com:gortali/my_dotfiles.git $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no

rm -f .bashrc 

config checkout 

eventually, remove the old .bashrc
