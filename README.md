# my_dotfiles

**based on**: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/:
- **avoid strange loops**: echo ".cfg" >> .gitignore
- **clone**: git clone --bare --recursive git@github.com:gortali/my_dotfiles.git $HOME/.cfg
- **define config command**: alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
- **modify status command to not show untracked**: config config --local status.showUntrackedFiles no
- **download**: config checkout 
- **download submodules**: config submodule update --recursive
- then, use **config** as you would use **git** (add, status, commit, push...)

**Note**: uncomment out "source .bashrc.post1", "source .bashrc.mac" from .bashrc if needed

to add new submodules: config submodule add <URL> .vim/pack/vendor/start/<NAME>
