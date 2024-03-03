#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

tar -xf xmrig-6.21.0-linux-x64.tar.gz

cd xmrig-6.21.0

./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u DOGE:DQPFq8Zzp89HAXxeM6LY1ya4hsy2vV5BSY.DOGE -p x 
