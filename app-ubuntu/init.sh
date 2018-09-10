#!/bin/bash

set -x 

con_name=nodered_balus_ubuntu
docker build . -t ${con_name}-image

con_interactive()
{
  docker run -it \
             --rm \
             --name ${con_name}-con \
             -p 1880:1880 \
             ${con_name}-image \
             /bin/bash
}

con_deamon()
{
  docker run -d \
             --name ${con_name}-con\
             -p 1880:1880 \
             ${con_name}-image
}

### Main
# con_interactive
con_deamon
