#! /bin/bash
for file in .home/.{bashrc,bash_aliases,zshrc} 
do
    cp -v $file ~/
done
