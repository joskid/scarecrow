#!/bin/bash
ppath=$(pwd)
if [ -d "./vidgears/" ]; then
    echo "vidgears exists already, not installing!"
else
    echo "Cloning vidgear to ${ppath}"
    git clone https://github.com/otter-in-a-suit/vidgear.git
    cd vidgear
    git checkout development
    pip3 install . --upgrade
fi
cd -