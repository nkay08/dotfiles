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

if [ -f "$HOME/.bashrc.d/*" ]; then
    for file in "$HOME/.bashrc.d/*" ]; do
        echo "asd"
        #source $file
    done
fi
