#! /bin/bash

# crear bakups
for file in $HOME/.{bashrc,bash_aliases,zshrc}
do
    mv -v $file $HOME/*.bak
done

# copiar configuracion
for file in ./home/.{bashrc,bash_aliases,zshrc} 
do
    cp -v $file $HOME/
done
