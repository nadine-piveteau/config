#!/bin/bash

echo $HOME

cp .vimrc $HOME/
cp .tmux.conf $HOME/
cp .gitconfig $HOME/
cat .bashrc >> $HOME/.bashrc
