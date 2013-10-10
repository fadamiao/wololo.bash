#!/bin/bash
# wololo.bash - Convert the origin of a Git repository, from Bitbucket to GitHub or GitHub to Bitbucket.
# Author: Fernando A. Damião <fernando.damiao@inpe.br>
# Created At: 2013-08-26 15:26
# Last Update: 2013-10-10 09:18
# License: BSD 3-Clause License

function wololo
{
    if [ ! -d "$(pwd)/.git" ]; then
        echo "Error: This is not a Git repository!"
        return 1
    fi

    if [ $# -ne 1 ]; then
        echo "Syntax: wololo <-g|--github | -b|--bitbucket>"
        return 1
    fi

    case $1 in
        '-b'|'--bitbucket')
            REPO_FROM='github.com'
            REPO_TO='bitbucket.org'
          ;;
        '-g'|'--github')
            REPO_FROM='bitbucket.org'
            REPO_TO='github.com'
          ;;
        *)
            echo "Error: invalid option"
            return 1
          ;;
    esac

    REPO_URL=`git remote -v | awk '{ print $2 }' | tail -1 | sed s/${REPO_FROM}/${REPO_TO}/`
    git remote set-url origin ${REPO_URL}
    echo "Wololo"
}
