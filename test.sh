#!/usr/bin/bash
#set -x
COLOR='\e[42m'
NC='\e[49m' # No Color

tag="test"
build_args="--no-cache"
build_args=""

printf "${COLOR}Build container${NC}\n"
docker build --file=Dockerfile ${build_args} --tag=${tag} .

printf "${COLOR}Start container${NC}\n"
docker run -p 88:88 --name my-${tag} ${tag}

printf "${COLOR}Delete container${NC}\n"
docker rm my-${tag}
