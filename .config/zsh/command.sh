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
clean_desktop(){
	TARGET=$1
	echo "Cleaning desktop ${TARGET:=$(wmctrl -d | awk '{if ($2 == "*") print $1}')}"
	wmctrl -l | awk -v target="${TARGET}" '{if ($2 == target) print $1}' |\
	xargs -i% wmctrl -i -c %
	unset TARGET
}
cook(){
	prep
	sauce
}
