#!/bin/bash

set -e

# constants
quiz_file=quiz.txt
score=0

# check if quiz file exists
if [ ! -f $quiz_file ]
then
    echo "Quiz file doesnt exist!"
    exit 1
fi
    echo "     _          _   _ ____       _    "
    echo "    / \   _ __ | |_(_) ___|  ___| | __"
    echo "   / _ \ | '_ \| __| \___ \ / _ \ |/ /"
    echo "  / ___ \| | | | |_| |___) |  __/   < "
    echo " /_/   \_\_| |_|\__|_|____/ \___|_|\_\ "
    echo "Input is Case Sensitive"
# game loop (loop over quiz file line/line)
while read -u9 line
do
    # parsing quiz file for current question
    question=`echo $line | cut -f1 -d' '`


    # print question & choices
    echo "$question:"


    # read player choice
    read -p ": " player_choice

    # compare player against solution & increment score
    if [ "$player_choice" == "1" ]
    then
    echo "***CORRECT***"
    printf "\e[30;48;5;82m %s \e[0m" "  "
    printf "\n\e[30;48;5;9m %s \e[0m" "  "
    printf "\e[30;48;5;11m %s \e[0m" "  "
    printf "\n\e[30;48;5;15m %s \e[0m" "  "
    printf "\n\e[30;48;5;21m %s \e[0m" "  "

    else
        echo "Incorrect."
    fi

    echo
done 9< $quiz_file

# print score
echo "Game Over"


