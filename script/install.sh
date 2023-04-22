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