#! /bin/bash
mkdir -v $HOME/.dotfiles
mv -vr $HOME/setup/* $HOME/.dotfiles/
# crear bakups
for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc}
do
    mv -v $file $file.bak
done

# copiar configuracion
for file in $HOME/.dorfiles/home/.{bashrc,aliases,zshrc,}
do
    ln -v $file $HOME/
done

source .bashrc
rm -rvf $HOME/setup
