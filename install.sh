#!/bin/bash

[ ! -f ~/.bash_profile ] && cp .bash_profile ~/

[ ! -d ~/scripts ] && mkdir ~/scripts

cp odio.sh ~/scripts/

[ -f ~/.bashrc ] && cat .bashrc >> ~/.bashrc || cp .bashrc ~/
