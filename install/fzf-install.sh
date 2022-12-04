if $(/usr/bin/which -s fzf) ; then 
    echo "fzf have been installed"
else 
    echo "install fzf"
    brew install fzf
    # To install useful key bindings and fuzzy completion:
    $(brew --prefix)/opt/fzf/install
    echo "#fzf custom\nsource $HOME/dotfiles/dot_fzf_custom" >> $HOME/.fzf.zsh
fi