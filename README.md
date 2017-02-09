## Files
* docker-compose.yml - contains all services 
* docker-compose-test.yml - contains minimum set of services for tests only

## Install Docker
https://docs.docker.com/engine/installation/

https://docs.docker.com/compose/install/ – Docker Compose

Required versions:
:exclamation: Docker 1.12
:exclamation: Compose 1.8

## Start
Execute `docker-compose up -d --no-recreate <service>` for setting up some particular services
e.g.
`docker-compose up -d --no-recreate pg94 mysql51`
or just
`docker-compose up -d --no-recreate`.

## Remove
`docker-compose stop <service> && docker-compose rm --force <service>`
e.g.
`docker-compose stop pg94 && docker-compose rm --force pg94`

## Update images
`docker-compose pull <service>`
e.g.
`docker-compose pull mysql51 mysql55 mysql56`

## Statefull services
For saving a state of a service you can use the stop command:
`docker-compose stop <service>`
e.g.
`docker-compose stop pg94`

## Starting test environment
:exclamation: Requires minimum 4Gb RAM and 10Gb free space on hard drive

`docker-compose -f docker-compose-test.yml pull`
`docker-compose -f docker-compose-test.yml up -d`

## Useful links
1. https://docs.docker.com/compose/
1. https://github.com/docker/compose
1. https://github.com/sdurrheimer/docker-compose-zsh-completion
1. http://stackoverflow.com/a/32023104/1553664
1. https://github.com/chadoe/docker-cleanup-volumes – remove unused images
1. https://github.com/brogersyh/Dockerfiles-for-windows
