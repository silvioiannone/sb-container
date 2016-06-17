# SBContainer

SBContainer is docker-compose script that allows to run some of the projects I'm working on (mostly Laravel projects). I built this in order to simplify the development process and to learn how docker is working. The main inspiration for this project was [LaraDock](https://github.com/LaraDock/laradock).

At the moment this project is subject to changes, there is still much to do, but feel free to fork it and use it for your own applications or as a starting point for your own project.

As you can see I added lots of comments because the main purpose for this project was for me to learn.

## Requirements

Docker and docker-compose. If you have Windows or MacOS docker-compose is included with the Docker installer.

## Installation

Pull the repo in your project folder:

    git clone git@bitbucket.org:silvioiannone/sbcontainer.git docker
    
## Usage

Once the project is on your computer setting it up is really easy:

    cd docker
    docker-compose build
    docker-compose up -d