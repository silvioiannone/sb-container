# SBContainer

SBContainer is a web development docker environment that allows to run some of the
projects I'm working on (mostly Laravel projects). I built this in order to
simplify the development process and to learn how docker is working. The main
inspiration for this project was
[LaraDock](https://github.com/LaraDock/laradock).

At the moment this project is subject to changes, there is still much to do, but
feel free to fork it and use it for your own applications or as a starting point
for your own project.

As you can see I added lots of comments because the main purpose for this
project was for me to learn.

## Features

The environment features everything needed for developing a "standard" Laravel
application. What's included:

 - Nginx
 - PHP 7.0
 - MySQL
 - NodeJS
 - Redis

## Requirements

Docker and docker-compose. If you have Windows or MacOS docker-compose is
included with the Docker installer.

## Installation

Pull the repo in your project folder:

    git clone git@bitbucket.org:silvioiannone/sbcontainer.git docker
    
## Usage

Once the project is on your computer setting it up is really easy. Just move in
the `docker` folder and:

    ./build.sh
    
The building process will take some time and once it's done you can simply start
the containers with:
    
    ./start.sh
    
If you need to access the workspace container you can run:
    
    ./start
    
You can stop all the containers using:

    ./stop.sh
    
## SSH Keys

Some predefined SSH keys are already created and located in the `workspace\ssh`
but you can replace them if you need to. These keys will be copied inside the
workspace container.