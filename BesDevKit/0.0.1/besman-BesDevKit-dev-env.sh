#!/bin/bash

function __besman_install_BesDevKit-dev-env
{
    
    __besman_install_python || return 1
    __besman_install_pip3 || return 1
    # __besman_install_code || return 1
    git clone https://github.com/asa1997/besecure-developer-toolkit

}

function __besman_uninstall_BesDevKit-dev-env
{
    echo "UnInstalled"
} 

function __besman_install_python
{
    [[ -z $(which python3) ]] && echo "Python : requirement satisfied" && return 0
    echo "Installing python"
    sudo apt update
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt update
    sudo apt install python3.8
    python3 --version
    [[ "$?" -ne "0" ]] && echo "Python installation failed" && return 1

}

function __besman_install_pip3
{
    [[ -z $(which pip3) ]] && echo "Pip3: requirement satisified" && return 0
    echo "Installing pip"
    sudo apt install python3-pip
    python3 -m pip --version
    [[ "$?" -ne "0" ]] && echo "Pip installation failed" && return 1
}
