# Fenix scripts for building ubuntu image


## How to use?
- Clone Fenix repository
```
# mkdir -p ~/project/khadas
# cd ~/project/khadas
# git clone https://github.com/khadas/fenix ubuntu
# cd ubuntu
```
- Setup build environment
```
# source env/setenv.sh
```
- Build ubuntu image
```
# make
```


Using Docker (all dependencies included inside docker image)

- install Docker
- Optionally install docker-compose

Using docker

```
# docker build -t fenix .
# docker run -it -v ${PWD}:/fenix --privileged fenix
```

or using docker-compose
```
# docker-compose run fenix
```
