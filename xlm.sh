#!/bin/bash

# Mengunduh xmrig 
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

# Mengekstrak file yang diunduh
tar -xf xmrig-6.21.0-linux-x64.tar.gz

# Masuk ke direktori xmrig-6.21.0 atau keluar jika gagal
cd xmrig-6.21.0 || exit

# Menjalankan xmrig untuk 4 instance
for ((i = 1; i <= 4; i++)); do
    screen -dmS XLM$i ../xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u XLM:GB2NT6CIX4X2BQI4D4I3RIV2G4J2D5KEKHAPPV66KK4NQ6MHLGSDSWXS.rig-$i -p x 
    echo "Berhasil menjalankan mining xlm ke-$i"
done

# Menampilkan daftar layar
screen -ls

# Menjalankan xmrig untuk instance ke-5
./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u XLM:GB2NT6CIX4X2BQI4D4I3RIV2G4J2D5KEKHAPPV66KK4NQ6MHLGSDSWXS.rig-5 -p x
