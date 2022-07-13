# my_dotfiles

**based on**: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/:
- **avoid strange loops**: echo ".cfg" >> .gitignore
- **clone**: git clone --bare git@github.com:gortali/my_dotfiles.git $HOME/.cfg
- **define config command**: alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
- **modify status command to not show untracked**: config config --local status.showUntrackedFiles no
- **download**: config checkout 
- then, use **config** as you would use **git** (add, status, commit, push...)


**Note**: for git hooks usage need to have autopep8 installed
