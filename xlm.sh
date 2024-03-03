#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

tar -xf xmrig-6.21.0-linux-x64.tar.gz

cd xmrig-6.21.0

./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u XLM:GB2NT6CIX4X2BQI4D4I3RIV2G4J2D5KEKHAPPV66KK4NQ6MHLGSDSWXS.XLM -p x
