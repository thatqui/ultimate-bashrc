#!/usr/bin/env bash

programcheck() {
    for i in git bash; do
        if ! command -v $i >/dev/null; then
            echo 'Please install $i'
            exit 1
        fi
    done
}

options() {
    read -p "[nano] What is your editor? You can change it later: " editor
}

clonerepo() {
git clone https://github.com/thatqui/ultimate-bashrc ~/.config/bash
}

checkeditor() {
    if [ ! -n "$editor" ]; then
        echo "Please specify an editor."
        options
    fi
}

do_options() {
    echo 'EDITOR=$editor' >> ~/.config/bash/settings.conf
}

main() {
    programcheck
    options
    checkeditor
    clonerepo
    do_options
}

main
