#!/usr/bin/env zsh
has(){ which $@ >/dev/null 2>/dev/null ;}
compile(){ cc -Wall -Wextra -Werror -o $1 ${@:2} && ./$1 ;}
webrun(){ wget -qO ./temp $1; chmod +x ./temp ; gnome-terminal -- ./temp ; rm ./temp ;}
n(){
	for i in $@; do 
		$i &
	done
}
minicurl(){
	gnome-terminal -t 'brainrot' --zoom 0.3 --geometry=100,50 -- curl $@
}
clean_desktop(){
	TARGET=$1
	echo "Cleaning desktop ${TARGET:=$(wmctrl -d | awk '{if ($2 == "*") print $1}')}"
	wmctrl -l | awk -v target="${TARGET}" '{if ($2 == target) print $1}' |\
	xargs -i% wmctrl -i -c %
	unset TARGET
}
goodbye(){
    COUNT=$(( $(wmctrl -d | wc -l) - 2))
    for i in $(seq $COUNT -1 0); do
		wmctrl -s $i
		clean_desktop
		sleep 1
    done
    gnome-session-quit --logout --no-prompt
}

move_to(){ wmctrl -r :ACTIVE: -t $1 ;}
move_with() { wmctrl -r :ACTIVE: -t $1 && wmctrl -s $1 ;}
get_utime() { cut -f 1 -d ' ' /proc/uptime ;}
benchmark(){
    start=$(get_utime)
    sh -c "$1" 1>/dev/null 2>&1
    end=$(get_utime)
    difference=$((end - start))
    actual_seconds=$(echo $difference | cut -f 1 -d '.')
    fractions=$(echo $difference | cut -f 2 -d '.')
    minutes=$(($actual_seconds / 60))
    seconds=$(($actual_seconds % 60))
    printf "%s m %s s %.6s μs" "$minutes" "$seconds" "${fractions:=0}"
}
getmakevar(){
    grep -E "$1\s*[=:]\s*" Makefile | sed 's/.*\t//'
}

rerun(){
    local ARGUMENTS=""
    local MAKEARGS=""
    for argument in $@; do
		if [ "$argument" = "-c" ]; then
			clear
		elif [ "$(echo "$argument" | head -c 3)" = "-m=" ]; then
			MAKEARGS+="$(echo "$argument" | tail -c +4)"
		else
			ARGUMENTS+="$argument "
		fi
    done
    sh -c "make re $MAKEARGS"
    sh -c "./$(getmakevar "NAME") $ARGUMENTS"
}

mkdircd(){
    if [ -n "$1" -a ! -e "$1" ]; then
		mkdir -v $1
	fi
    \cd $1
}

if has norminette; then
	norm(){
		files=`norminette $@ | grep 'Error!' | cut -f 1 -d ':' | tr '\n' ' '`
		if [ ! $files ]; then
			echo 'all files pass'
			return
		fi
		norminette `echo $files`
		echo 'open files?'
		echo "$files"
		read response
		if [ $response != "n" ]; then
			nvim `echo $files`
		fi
	}
fi
if has yazi; then
	y() {
		local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
		command yazi "$@" --cwd-file="$tmp"
		IFS= read -r -d '' cwd < "$tmp"
		[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
		rm -f -- "$tmp"
	}
fi
if has hoogle; then
	hoo() {
		hoogle search -i $@ | bat
	}
fi
