#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

tar -xf xmrig-6.21.0-linux-x64.tar.gz

cd xmrig-6.21.0

screen -dmS LTC ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u LTC:LKff4nHW6UkdKFj6SruixG4cfwUngUHyrz.LTC -p x

echo "╔═╦═╦╗──╔╗─────╔╗╔╗────╔╗──╔══╦╗─────╔╗───╔╗"
echo "║║║║╠╬═╦╬╬═╦╦═╗╚╗╔╬══╦╦╬╬═╗║══╣╚╦═╗╔╦╣╚╦═╦╝║"
echo "║║║║║║║║║║║║║╬║╔╝╚╣║║║╔╣║╬║╠══║╔╣╬╚╣╔╣╔╣╩╣╬║"
echo "╚╩═╩╩╩╩═╩╩╩═╬╗║╚╝╚╩╩╩╩╝╚╬╗║╚══╩═╩══╩╝╚═╩═╩═╝"
echo "────────────╚═╝─────────╚═╝"

sleep infinity
