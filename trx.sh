#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

tar -xf xmrig-6.21.0-linux-x64.tar.gz

cd xmrig-6.21.0

screen -dmS TRX ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u TRX:TMLSJnPCRvshn1aV5zmdg2zWwg5LKgUAAj.TRX -p x

echo "╔═╦═╦╗──╔╗─────╔╗╔╗────╔╗──╔══╦╗─────╔╗───╔╗"
echo "║║║║╠╬═╦╬╬═╦╦═╗╚╗╔╬══╦╦╬╬═╗║══╣╚╦═╗╔╦╣╚╦═╦╝║"
echo "║║║║║║║║║║║║║╬║╔╝╚╣║║║╔╣║╬║╠══║╔╣╬╚╣╔╣╔╣╩╣╬║"
echo "╚╩═╩╩╩╩═╩╩╩═╬╗║╚╝╚╩╩╩╩╝╚╬╗║╚══╩═╩══╩╝╚═╩═╩═╝"
echo "────────────╚═╝─────────╚═╝"

sleep infinity
