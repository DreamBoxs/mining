#!/bin/bash

# Mengunduh xmrig 
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz

# Mengekstrak file yang diunduh
tar -xf xmrig-6.21.0-linux-x64.tar.gz

# Masuk ke direktori xmrig-6.21.0 atau keluar jika gagal
cd xmrig-6.21.0 || exit

# Menjalankan xmrig untuk 4 instance
# for ((i = 1; i <= 4; i++)); do
#     screen -dmS SRBMiner$i ../xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u XDOGE:DQPFq8Zzp89HAXxeM6LY1ya4hsy2vV5BSY.doge-$i -p x 
#     echo "Berhasil menjalankan SRBMiner ke-$i"
# done

# Menampilkan daftar layar
# screen -ls

# Menjalankan SRBMiner-MULTI untuk instance ke-5
./xmrig -a rx -o stratum+ssl://rx.unmineable.com:443 -u DOGE:DQPFq8Zzp89HAXxeM6LY1ya4hsy2vV5BSY.doge-5 -p x 

#!/bin/bash

# Mengunduh SRBMiner-Multi
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.4.7/SRBMiner-Multi-2-4-7-Linux.tar.xz
