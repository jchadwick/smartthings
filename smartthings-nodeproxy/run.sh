#!/bin/sh

# look for config files in mounted volume
if [ -d config ]; then 
    cp -rvf config/* ./
fi

if [ ! -e config.js ]; then
    echo
    echo
    echo "********************************************************"
    echo "****"
    echo "****         WARNING: NO CONFIGURATION FOUND!"
    echo "****"
    echo "****  Smarthings Node Proxy will continue to run, "
    echo "****  but nothing will happen..."
    echo "****"
    echo "********************************************************"
    echo
    echo
fi

node server.js
