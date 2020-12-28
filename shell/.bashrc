#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

xhost +local:root > /dev/null 2>&1

# export QT_SELECT=4

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -d ~/.bashrc.d ]; then
    for file in ~/.bashrc.d/*; do
        source $file
    done
fi
