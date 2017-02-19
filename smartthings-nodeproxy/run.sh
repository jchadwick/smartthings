*!/bin/sh

if [ ! -e config.js ]; then
    echo
    echo
    echo ********************************************************
    echo ****
    echo ****         WARNING: NO CONFIGURATION FOUND!
    echo ****
    echo ****  Do the following:
    echo ****
    echo ****  1) Copy relevant plugins from the ./avail_plugins 
    echo ****     folder to the ./plugins folder
    echo ****
    echo ****  2) Copy config.json.sample to config.json 
    echo ****     and update with your configuration settings
    echo ****
    echo ********************************************************
    echo
    echo
fi

node server.js
