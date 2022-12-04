# git local
localGitConfig=~/.config.local/local_gitconfig
if [[ ! -f $localGitConfig ]]; then 
    touch $localGitConfig
fi

# local sh
localShConfig=~/.config.local/localEnv.sh
if [[ ! -f $localShConfig ]]; then 
    touch $localShConfig
fi

