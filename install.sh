#! /bin/bash
for file in .{bashrc,bash_aliases,zshrc} 
do
    cp -v $file ~/
done
