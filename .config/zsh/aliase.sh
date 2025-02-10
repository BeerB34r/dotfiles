# Useful aliases
alias prep='nvim ~/.dotfiles/.zshrc'
alias sauce='source ~/.dotfiles/.zshrc'
alias vimprep='nvim ~/.dotfiles/.vimrc'
alias comp='cc -Wall -Wextra -Werror'
alias nman='gnome-terminal -t  "The Readerrrrr" -- man'
alias nuvim='gnome-terminal -t "The objectively best IDE" --geometry=84x76 -- vim'
alias ls='ls -aF --group-directories-first --color=auto'
alias term='gnome-terminal -t "Goblin time"'
alias cls='clear && ls'
alias rm='rm -d -v'
alias cd='mkdircd'

# The git aliases
alias coomit='git commit -m'
alias gush='git push'
alias gadd='git add'
alias gadda='git add .'
alias gull='git pull'
alias gs='git status'
gushto(){
	for word in ${@:2}
	do
		git push -u $word $1
	done
};
alias gushtostd='gushto master origin github'

# Useless aliases
alias donut="gnome-terminal -t brainrot --zoom 0.3 --geometry=100,50 -- curl ascii.live/donut"
alias parrot="gnome-terminal -t brainrot --zoom 0.3 --geometry=100,50 -- curl parrot.live"
alias gobstream='while : ; do echo "$COL_FORE$((1 + $RANDOM % 256));$((1 + $RANDOM % 256));$((1 + $RANDOM % 256))mIt is goblin time$COL_CLEAR"; sleep 0.01; done'
alias gobtrix='~/Downloads/gobtrix.sh'
alias fortune='fortune ~/Downloads/fortunes/'
alias cowracle='fortune | cowsay'
alias mrbreast='cat ~/.dotfiles/non-dotfiles/mrbeast | cowsay -W 90'
alias code='vim'
alias low_skill='ls'
feeling_lucky(){ if [[ $(($RANDOM % 1000)) == 0 ]]; then echo "lucky!" && ~/core/treachery/assorted/forkbomb.sh ; else echo "unlucky"; fi }
alias ffmpreg='ffmpeg'

