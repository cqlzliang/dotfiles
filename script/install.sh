scripHome=$HOME/dotfiles/script
sh $scripHome/localFile.sh
sh $scripHome/starship-install.sh
sh $scripHome/homebrew-install.sh
sh $scripHome/fzf-install.sh
sh $scripHome/zsh-install.sh

# 如果 tmux 未安装则安装
if $(/usr/bin/which -s tmux) ; then 
    echo "tmux have been installed"
else 
    echo "install tmux"
    brew install tmux
fi

# 如果 ~/.tmux 文件夹存在则打印提示信息，否则提示未安装
if [ -d ~/.tmux ]; then
    echo "tmux plugins have been installed"
else
    echo "install tmux plugins"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# 如果 bat 未安装, 则安装。/
if $(/usr/bin/which -s bat) ; then 
    echo "bat have been installed"
else 
    echo "install bat"
    brew install bat
fi

# 如果 autojump 未安装，则安装
if $(/usr/bin/which -s autojump) ; then 
    echo "autojump have been installed"
else 
    brew install autojump
    echo "install autojump"
fi

# 如果 pipx 未安装，则安装
if $(/usr/bin/which -s pipx) ; then 
    echo "pipx have been installed"
else 
    brew install pipx
    pipx ensurepath
    pipx completions
    echo "install pipx"
fi

