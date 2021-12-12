#!/usr/bin/bash
#set -x
CLR='\e[42m'
RED='\e[1;31m'
DEF=
NC='\e[m'       #'\e[49m' # No CLR
PORT=88

tag="test"
build_args="--no-cache"
build_args=""

echo "${CLR}Build container${NC}\n"
pause
docker build --file=Dockerfile ${build_args} --tag=${tag} .

echo "${CLR}Start container${NC}\n"
echo "${CLR}Web server URL http://localhost:${PORT}${NC}\n"
echo "${CLR}${NC}${RED}CTRL+C${NC}${CLR} - to stop container${NC}"
docker run -p ${PORT}:${PORT} --name my-${tag} ${tag}

echo "${CLR}Delete container${NC}\n"
docker rm my-${tag}
pause