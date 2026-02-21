#!/usr/bin/env zsh
# Vim header email
export MAIL="mde-beer@student.codam.nl"
# scuffed ssh-key adding
ssh-add ~/.ssh/core 2>/dev/null
# capt
export LD_LIBRARY_PATH=/home/mde-beer/.capt/root/lib/x86_64-linux-gnu:/home/mde-beer/.capt/root/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
export PATH=/home/mde-beer/.capt:/home/mde-beer/.capt/root/usr/local/sbin:/home/mde-beer/.capt/root/usr/local/bin:/home/mde-beer/.capt/root/usr/sbin:/home/mde-beer/.capt/root/usr/bin:/home/mde-beer/.capt/root/sbin:/home/mde-beer/.capt/root/bin:/home/mde-beer/.capt/root/usr/games:/home/mde-beer/.capt/root/usr/local/games:/home/mde-beer/.capt/snap/bin:/home/mde-beer/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/mde-beer/.dotnet/tools:$PATH
# frank
alias francinette=/home/mde-beer/francinette/tester.sh
alias paco=/home/mde-beer/francinette/tester.sh
