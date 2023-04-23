# my_dotfiles

**based on**: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/:
- **avoid strange loops**: echo ".cfg" >> .gitignore
- **clone**: git clone --bare --recursive git@github.com:gortali/my_dotfiles.git $HOME/.cfg
- **define config command** (will be later contained in bashrc): alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
- **modify status command to not show untracked**: config config --local status.showUntrackedFiles no
- **remove .gitignore to checkout**: rm .gitignore
- **download**: config checkout 
- then, use **config** as you would use **git** (add, status, commit, push...)

Additional steps:
- **nvim** download it, launch it and do :PlugInstall to install the plugins
- **git**: 
  - git config --global user.email "gortali12@gmail.com"
  - git config --global user.name "Giulio Ortali"
  - ... config push --set-upstream origin master
  - **install vim-plug**: https://github.com/junegunn/vim-plug
