# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
   xterm-color) color_prompt=yes;;
esac

# Uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


term_colors() {
  local BLACK="\[\033[0;30m\]"
  local BLUE="\[\033[0;34m\]"
  local GREEN="\[\033[0;32m\]"
  local CYAN="\[\033[0;36m\]"
  local RED="\[\033[0;31m\]"
  local PURPLE="\[\033[0;35m\]"
  local BROWN="\[\033[0;33m\]"
  local LIGHT_GRAY="\[\033[0;37m\]"
  local DARK_GRAY="\[\033[1;30m\]"
  local LIGHT_BLUE="\[\033[1;34m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local LIGHT_CYAN="\[\033[1;36m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local LIGHT_PURPLE="\[\033[1;35m\]"
  local YELLOW="\[\033[1;33m\]"
  local WHITE="\[\033[1;37m\]"
  local NO_COLOR="\[\033[0m\]"
  PS1="${debian_chroot:+($debian_chroot)}$LIGHT_GREEN\u@\h$NO_COLOR:$LIGHT_BLUE\w $RED\${prompt_job}$NO_COLOR\$ "
  PS1="$LIGHT_GREEN\u@\h$NO_COLOR:$LIGHT_BLUE\w $RED\${prompt_job}$NO_COLOR\$ "
}

if [ "$color_prompt" = yes ]; then
  term_colors
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "
fi
unset color_prompt force_color_prompt
#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'

[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi

myecho() {
    echo "$1" | tr ' ' '\n'
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
}

#define fn that returns this string: $(date +%Y%m%d%H%M%S)
function now() {
    date +%Y%m%d%H%M%S
}


#source ~/.bashrc.post1
#source ~/.bashrc.ipad
#source ~/.bashrc.mac
source ~/.bashrc.thinkp




