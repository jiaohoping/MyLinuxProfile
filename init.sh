#!/usr/bin/env bash

# echo -e "\033[32m 绿色字 \033[0m"
# echo -e "\033[31m 红色字 \033[0m"
# echo -e "\033[34m 蓝色字 \033[0m"  

function installVimPlug (){
    PLUG_PATH=~/.vim/autoload/
    if [[ -d $PLUG_PATH ]];then
            echo -e "\033[32mcopy plug.vim to $PLUG_PATH \033[0m"
            mv ./plug.vim $PLUG_PATH
    else
            echo -e "\033[32mmkdir $PLUG_PATH and copy plug.vim \033[0m"
            mkdir -p $PLUG_PATH && mv ./plug.vim $PLUG_PATH
    fi
}


function copyConfigFile () {
    if [[ -e $HOME/$1 ]]; then
        echo -e "\033[31m[fail] The $1 file already exists! \033[0m"
    else
        cp ./$1 $HOME/$1
        if [[ $? -eq 1 ]]; then
                echo -e "\033[31m[fail] copy $1 file failed! \033[0m"
        else 
            echo -e "\033[32m[success] copy $1 file success! \033[0m" 
        fi

    fi
}

installVimPlug
copyConfigFile .tmux.conf 
copyConfigFile .vimrc

echo -e "\033[34mRun \"vim -c PlugInstall\" to install plugins! \033[0m"