# potential vim stdheader fix
export MAIL="mde-beer@student.codam.nl"

# Useful aliases
alias prep='vim ~/dotfiles/codam/.zshrc'
alias sauce='source ~/dotfiles/codam/.zshrc'
alias vimprep='vim ~/dotfiles/codam/.vimrc'
alias comp='cc -Wall -Wextra -Werror'
alias nman='gnome-terminal -t  "The Readerrrrr" -- man'
alias nuvim='gnome-terminal -t "The objectively best IDE" --geometry=84x76 -- vim'
alias ls='ls -aF --group-directories-first --color=auto'
alias term='gnome-terminal -t "Goblin time"'
alias cls='clear && ls'
alias francinette=/home/mde-beer/francinette/tester.sh
alias paco=/home/mde-beer/francinette/tester.sh
compile(){ cc -Wall -Wextra -Werror -o $1 ${@:2} && ./$1}
webrun(){ wget -qO ./temp $1; chmod +x ./temp ; gnome-terminal -- ./temp ; rm ./temp }
n(){for i in $@; do $i &!; done};
vide_tile(){
	gnome-terminal -t "$1" --geometry=84x76+$((1109*$2))+0 -- vim .
}
minicurl(){
	gnome-terminal -t 'brainrot' --zoom 0.3 --geometry=100,50 -- curl $@
}
vide(){
	vide_tile "The objectively" 0
	vide_tile "superior Integrated" 1
	vide_tile "Development Environment" 2
	gnome-terminal -t "Computer vision syndrome" --geometry=38x26+3327+0
	minicurl ascii.live/donut
	minicurl parrot.live
	gnome-terminal -t "Windows:tm: file explorer" --geometry=38x27+3327+1400 -- zsh -c 'clear && ls && zsh -i'
	exit
}


# The git aliases
alias coomit='git commit -m'
alias gush='git push'
alias gadd='git add'
alias gadda='git add .'
alias gull='git pull'
alias gs='git status'
gushto(){for word in ${@:2}; do git push -u $word $1; done };
alias gushtostd='gushto master origin github'

# Useless aliases
alias donut="gnome-terminal -t brainrot --zoom 0.3 --geometry=100,50 -- curl ascii.live/donut"
alias parrot="gnome-terminal -t brainrot --zoom 0.3 --geometry=100,50 -- curl parrot.live"
alias gobstream='while : ; do echo "$COL_FORE$((1 + $RANDOM % 256));$((1 + $RANDOM % 256));$((1 + $RANDOM % 256))mIt is goblin time$COL_CLEAR"; sleep 0.01; done'
alias gobtrix='~/Downloads/gobtrix.sh'
alias fortune='fortune ~/Downloads/fortunes/'
alias cowracle='fortune | cowsay'
alias mrbreast='cat ~/dotfiles/non-dotfiles/mrbeast | cowsay -W 90'
alias code='vim'
alias low_skill='ls'
feeling_lucky(){ if [[ $(($RANDOM % 1000)) == 0 ]]; then echo "lucky!" && ~/core/treachery/assorted/forkbomb.sh ; else echo "unlucky"; fi }

RANDOM256='$((1 + $RANDOM % 256))'
# Ansi Color variables
NEWLINE=$'\n'
ESC='\033['
COL_FORE=$ESC'38;2;'
COL_BACK=$ESC'48;2;'
COL_CLEAR=$ESC'0m'


# Prompt customisation
COL_GOB_FORE=$COL_FORE'51;161;62m' #R;G;Bm
COL_GOB_BACK=$COL_BACK'77;34;110m' #R;G;Bm
COL_GOB=$COL_GOB_FORE$COL_GOB_BACK
COL_PWD_FORE=$COL_FORE'19;100;186m' #R;G;Bm
COL_PWD_BACK=$COL_BACK'240;139;46m' #R;G;Bm
COL_PWD=$COL_PWD_FORE$COL_PWD_BACK
GOB_PROMPT=$(echo $COL_GOB'goblin-%m'$COL_CLEAR) #%m => hostname
PWD_PROMPT=$(echo $COL_PWD'\t%~'$COL_CLEAR) #%~ => PWD
PS1=$GOB_PROMPT$PWD_PROMPT$NEWLINE"%% " #PS1 is weird and doesnt like newlines

# ssh workaround
ssh-add ~/.ssh/core 2>/dev/null
# capt
export LD_LIBRARY_PATH=/home/mde-beer/.capt/root/lib/x86_64-linux-gnu:/home/mde-beer/.capt/root/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
export PATH=/home/mde-beer/.capt:/home/mde-beer/.capt/root/usr/local/sbin:/home/mde-beer/.capt/root/usr/local/bin:/home/mde-beer/.capt/root/usr/sbin:/home/mde-beer/.capt/root/usr/bin:/home/mde-beer/.capt/root/sbin:/home/mde-beer/.capt/root/bin:/home/mde-beer/.capt/root/usr/games:/home/mde-beer/.capt/root/usr/local/games:/home/mde-beer/.capt/snap/bin:/home/mde-beer/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/mde-beer/.dotnet/tools:$PATH
