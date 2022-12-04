# git local
localGitConfig=$HOME/dotfiles/local_gitconfig
if [[ ! -f $localGitConfig ]]; then 
    touch $localGitConfig
fi

# local sh
localShConfig=$HOME/dotfiles/localEnv.sh
if [[ ! -f $localShConfig ]]; then 
    touch $localShConfig
fi

