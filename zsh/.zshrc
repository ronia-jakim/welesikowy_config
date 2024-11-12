PROMPT="%F{red}ฅ^•ﻌ•^ฅ%f %F{yellow}%n%f:%F{green}%1~/ %f%F{red}ᓚᘏᗢ%f "

alias dupa="nvim"

alias powersaver="powertop -c"

alias screens="brightnessctl -l"

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^H" backward-kill-word

alias keycodes="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

# alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# ~/tasks.sh
export PATH=$PATH:/home/maruda/.spicetify
# alias ls='ls --color=auto' #-1'

alias ls='ls --color=auto '
# alias zabijcie='cd ~/uni-stuff/zima-22 && code .'

function gituje {
	git add -A && git commit -m $1 && git push
}

function bazunie {
  psql -f "$1"
}

# alias palce='libinput-gestures-setup autostart star'

#print -P "%F{red} %f%F{magenta} %f%F{yellow} %f%F{green} %f%F{cyan} %f%F{blue} %f"

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANGUAGE=english

# zathura colorthemes
source ~/.config/zathura/zathura-time-theme.sh

alias icat="kitten icat"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

alias yazi="y"
