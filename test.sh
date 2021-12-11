#!/usr/bin/bash
#set -x
COLOR='\e[42m'
RED='\e[1;31m'
DEF=
NC='\e[m'       #'\e[49m' # No Color
PORT=88

tag="test"
build_args="--no-cache"
build_args=""

printf "${COLOR}Build container${NC}\n"
docker build --file=Dockerfile ${build_args} --tag=${tag} .

printf "${COLOR}Start container${NC}\n"
printf "${COLOR}Web server URL http://localhost:${PORT}${NC}\n"
printf "${COLOR}${NC}${RED}CTRL+C${NC}${COLOR} - to stop container${NC}"
docker run -p ${PORT}:${PORT} --name my-${tag} ${tag}

printf "${COLOR}Delete container${NC}\n"
docker rm my-${tag}
