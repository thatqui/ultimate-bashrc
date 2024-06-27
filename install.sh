#!/usr/bin/env bash

programcheck() {
    for i in git bash; do
        if ! command -v $i >/dev/null; then
            echo 'Please install $i'
            exit 1
        fi
    done
}

info() {
    echo -e "\nYou can customize ~/.config/bash/settings.conf. For example:\n# You can add your editor.\nEDITOR='emacs -nw'"
}

addbashrc() {
    echo 'source ~/.config/bash/src/bashrc' >> ~/.bashrc
}

main() {
    programcheck
    info
    addbashrc
}

main
