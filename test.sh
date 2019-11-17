#!/bin/bash

#remove the container if exist or running
if [ $(sudo docker container ls -q --filter name=my_app_db_container) != '' ]; then
   sudo docker container stop my_app_db_container
   sudo docker container rm my_app_db_container
fi

#remove the image if exist or running
if [ $(sudo docker image ls -q --filter name == my_app_db) != '' ]; then
    sudo docker image rm my_app_db
fi

#build the image 
sudo docker image build -t my_app_db .

#start the container
sudo docker run -itd -p 9099:3306 --name my_app_db_container my_app_db
