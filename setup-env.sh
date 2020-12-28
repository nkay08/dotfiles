# /bin/bash

DIR="$PWD"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source "$SCRIPT_DIR/shell/.bashrc.d/stow"

STOW_LIST=(
    "shell"
    "texlive"
    "rofi"
    "zsh"
)


echo ${STOW_LIST[@]}

echo  "Folders to stow: "
echo  "------------------------------------------"
echo  "${STOW_LIST[@]}"
echo  "------------------------------------------"

echo -n "Stow these? [Yn]"
read stow_folders

if [ "$stow_folders" == "${stow_folders#[nN]}" ]; then
    stow ${STOW_LIST[@]}
    exit 0
else
    exit 0
fi


exit 0
