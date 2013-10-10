# wololo.bash

Convert the origin of a Git repository, from Bitbucket to GitHub or GitHub to Bitbucket.


## Infos
* Made in OS : Windows 7
* Tested in OS : Ubuntu Server 10.04 LTS
* Language Used : Shell Script (Bash)
* Dependencies : git, awk, tail, sed
* License : BSD 3-Clause License


## How To
### Installing
Create the `scripts` folder in your home and move `wololo.bash` to there:

    $ mkdir ~/.scripts
    $ mv wololo.bash ~/.scripts/.

Now make the command available for your user:

#### Linux

    $ echo ". ~/.scripts/wololo.bash" >> ~/.bashrc

#### Mac OS X

    $ echo ". ~/.scripts/wololo.bash" >> ~/.bash_profile


### Using wololo
To change the repository from Bitbucket to GitHub:

    $ wololo -g

Or

    $ wololo --github

To change the repository from GitHub to Bitbucket:

    $ wololo -b

Or

    $ wololo --bitbucket

OBS: The wololo only works in the repository directory.


## To Do
 * Support directory input
