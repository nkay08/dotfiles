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

BASHRC_MODULES_FOLDER="$HOME/.config/bash"

#echo ".bashrc: Try loading bashrc modules in $BASHRC_MODULES_FOLDER"
if [ -d ${BASHRC_MODULES_FOLDER} ]; then # No quotes around *, else doesnt work
    for file in ${BASHRC_MODULES_FOLDER}/* ; do # No quotes around *, else doesnt work
#         echo ".bashrc: Loading $file"
        . $file
    done
else
    true
#     echo ".bashrc: No folder: $BASHRC_MODULES_FOLDER"
#     echo "OR"
#     echo ".bashrc: No files in: $BASHRC_MODULES_FOLDER"
fi
