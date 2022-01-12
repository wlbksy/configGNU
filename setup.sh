#!/bin/bash
this_path=`pwd`
echo "当前目录: "${this_path}
echo "home: "${HOME}

link_file(){
    # 用法： link_file src dst
    echo "链接 ./"$1" 至 $2"
    rm "$2" -rf
    ln -s ${this_path}/$1 "$2"
}

link_file bashrc "${HOME}/.bashrc"
link_file zshrc "${HOME}/.zshrc"
link_file vimrc "${HOME}/.vimrc"
link_file vim "${HOME}/.vim"
link_file pip "${HOME}/.pip"
link_file vscode/settings.json "${HOME}/Library/Application Support/Code/User/settings.json"
link_file vscode/snippets "${HOME}/Library/Application Support/Code/User/snippets"
echo "配置完成"
