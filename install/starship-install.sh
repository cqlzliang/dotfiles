if $(/usr/bin/which -s starship) ; then 
    echo "starship have been installed"
else 
    echo "install starship"
    curl -sS https://starship.rs/install.sh | sh
fi