#! /bin/bash
# --------------------------------------------------------------#
# By GoDlikE
# Version 1.00-0
# --------------------------------------------------------------#
# Install vim-colorscheme in this machine

# Echo colors
RED="\e[1;31m"
GREEN="\e[1;32m"
BLUE="\e[1;34m"
WHITE="\e[1;37m"
RESET="\e[0m"

# Message
echo -e "${BLUE}:: ${WHITE}Checking .vim folder...${RESET}"

# Check file directories
if [[ -d "$HOME/.vim" ]]; then
    if [[ -d "$HOME/.vim/colors/" ]]; then
        echo -e "${BLUE}:: ${WHITE}Folder \"${GREEN}.vim/colors/${WHITE}\" exist in your home directory!${RESET}"
    else
        echo "${BLUE}:: ${WHITE}Creating \".vim/${GREEN}colors${WHITE}/\" folder in your home directory${RESET}"
    fi
else
    echo "${BLUE}:: ${WHITE}Creating \".vim\" folder in your home directory${RESET}"
    mkdir "$HOME/.vim"
    echo "${BLUE}:: ${WHITE}Creating \".vim/${GREEN}colors${WHITE}/\" folder in your home directory${RESET}"
    mkdir "${HOME}/.vim/colors/"
fi

# Move files (1/2)
echo -e "${BLUE}:: ${WHITE}Moving vim-coloschemes files to .vim/colors/ folder...${RESET}"
echo -ne "$\t${WHITE} vim-colorschemes: ${RESET}"
cp Colors/* "$HOME"/.vim/colors/ -rf || exit
if [[ $? -eq 0 ]]; then
    echo -e "${GREEN} Sucess! ${RESET}"
else
    echo -e "${RED} Error... ${RESET}"
fi
sleep 1

# Creating vimrc file for user
# Moving files (2/2)
echo -e "${BLUE}:: ${WHITE}Moving vimrc files to $HOME/.vimrc folder...${RESET}"
echo -ne "$\t${WHITE} vimrc: ${RESET}"
cp vimrc "$HOME"/.vimrc -rf || exit
if [[ $? -eq 0 ]]; then
    echo -e "${GREEN} Sucess! ${RESET}"
else
    echo -e "${RED} Error... ${RESET}"
fi
sleep 1

echo -e "${BLUE}:: ${WHITE} Script done! Press enter to continue. ${RESET}"
read -r
