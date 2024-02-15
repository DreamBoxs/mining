#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

tar -xf xmrig-6.21.0-linux-x64.tar.gz

cd xmrig-6.21.0 || exit

declare -A running_list=(
    [DOGE]=DQPFq8Zzp89HAXxeM6LY1ya4hsy2vV5BSY
    [LTC]=LKff4nHW6UkdKFj6SruixG4cfwUngUHyrz
    [TRX]=TMLSJnPCRvshn1aV5zmdg2zWwg5LKgUAAj
    [XLM]=GB2NT6CIX4X2BQI4D4I3RIV2G4J2D5KEKHAPPV66KK4NQ6MHLGSDSWXS
    [XMR]=47bE71spiv7d7Pr7iY9yuQ4xyNK921fDtQiVqoNTrWvtU5JxAEThCGUGcMTm2NoUrfjDb1EGqMsdFbwwrdCEBfcY3zfBk9i
)

for coin in "${!running_list[@]}"; do
    screen -dmS "xmrig_$coin" ./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u "$coin:${running_list[$coin]}.$coin" -p x 
    echo "Berhasil menjalankan xmrig untuk $coin"
done

export TERM=xterm-256color

while true; do
    clear
    rand=$(($RANDOM % 10))

    case $rand in
        0)
            echo "         ."
            echo "        \ \ \ "
            echo "       __\_\_\__"
            echo "      (_________)"
            ;;
        1)
            echo "   __"
            echo "  /  \ "
            echo " |    |"
            echo " \_()_/"
            ;;
        2)
            echo "     /\\_/\\"
            echo "    / o o \\"
            echo "   (   \"   )"
            echo "    \\~(*)~/"
            ;;
        3)
            echo "        _"
            echo "       / \\"
            echo "      / _ \\"
            echo "     / ___ \\"
            echo "    /_/   \\_\\"
            ;;
        4)
            echo "       /\\_/\\"
            echo "      / o o \\"
            echo "     (   \"   )"
            echo "      \\~(*)~/"
            ;;
        5)
            echo "  /\\___/\\"
            echo " ( o   o )"
            echo "  \\  ~  /"
            echo "   ('_')"
            ;;
        6)
            echo "      _"
            echo "     | \\______"
            echo "     |  / /  /"
            echo "     |  \\/  /"
            echo "     |____/"
            ;;
        7)
            echo "   _____"
            echo "  /     \\"
            echo " | () () |"
            echo "  \\  ^  /"
            echo "   |||||"
            ;;
        8)
            echo "   /\\_/\\"
            echo "  / o o \\"
            echo " (   \"   )"
            echo "  \\~(*)~/"
            ;;
        9)
            echo "   /\\_/\\"
            echo "  / o o \\"
            echo " (   \"   )"
            echo "  \\~(*)~/" 
            ;;
    esac

    sleep 1
done
