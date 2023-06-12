#!/bin/bash
# Cleanup
rm -rf Server
mkdir Server
for file in $(ls stacks) 
do
    mkdir -p "Server/${file}"
    cp stacks/${file} Server/${file}/docker-compose
    cp env/${file}/* Server/${file}/ -r
    echo ${file} is ready to deploy
done;