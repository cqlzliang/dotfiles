# install zsh on mac
if [[ ! -f '/bin/zsh' ]]; then
    echo "begin install zsh"
    brew install zsh
    # set zsh as the default shell
    chsh -s $(which zsh)

else
    echo "zsh have been installed"
fi

# install oh-my-zsh
zshHome="$HOME/.oh-my-zsh"
if [[ ! -e $zshHome ]]; then
    echo "begin install oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "oh-my-zsh have been installed"
fi

# install oh-my-zsh plugin
pluginHome=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins
# zsh-syntax-highlighting
if [[ ! -e $pluginHome/zsh-syntax-highlighting ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $pluginHome/zsh-syntax-highlighting
fi
# zsh-autosuggestions
if [[ ! -e $pluginHome/zsh-autosuggestions ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $pluginHome/zsh-autosuggestions
fi