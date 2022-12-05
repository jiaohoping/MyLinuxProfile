#!/usr/bin/env bash

# echo -e "\033[32m 绿色字 \033[0m"
# echo -e "\033[31m 红色字 \033[0m"
# echo -e "\033[34m 蓝色字 \033[0m"  



# 拷贝.tmux.conf 到当前用户的家目录
function copyTmuxConf () {
    if [[ -e $HOME/.tmux.conf ]]; then
        echo -e "\033[31m[fail] The .tmux.conf file already exists ! \033[0m"
    else
        cp ./.tmux.conf $HOME/.tmux.conf
        if [[ $? -eq 1 ]]; then
                echo -e "\033[31m[fail] copy .tmux.conf file failed ! \033[0m"
        else 
            echo -e "\033[32m[success]copy .tmux.conf file success! \033[0m" 
        fi

    fi
}

function copyVimrc () {
    if [[ -e $HOME/.vimrc ]]; then
        echo -e "\033[31m[fail] The .vimrc file already exists ! \033[0m"
    else
        cp ./.vimrc $HOME/.vimrc
        if [[ $? -eq 1 ]]; then
                echo -e "\033[31m[fail] copy .vimrc file failed ! \033[0m"
        else 
            echo -e "\033[32m[success]copy .vimrc file success! \033[0m" 
        fi

    fi
}


copyTmuxConf
copyVimrc
