# my_dotfiles

based on: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

avoid strange loops
echo ".cfg" >> .gitignore

clone
git clone --bare git@github.com:gortali/my_dotfiles.git $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no

config checkout 


then, use config as you would use git (add, status, commit, push...)
