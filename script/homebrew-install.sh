if $(/usr/bin/which -s brew) ; then 
    echo "homebrew have been installed"
else 
    echo "install homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi