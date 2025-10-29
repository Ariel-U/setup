#! /bin/bash

# crear bakups
for file in $HOME/.{bashrc,aliases,zshrc,vimrc,tmux.conf,nanorc}
do
    mv -v $file $file.bak
done

# copiar configuracion
for file in ./home/.{bashrc,aliases,zshrc,}
do
    ln -v $file $HOME/
done

