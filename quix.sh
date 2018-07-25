dd if=/dev/zero of=/mnt/myswap.swap bs=1M count=3500

mkswap /mnt/myswap.swap

chmod 0600 /mnt/myswap.swap

swapon /mnt/myswap.swap



sudo apt update -y

sudo apt upgrade -y

sudo apt dist-upgrade -y

sudo apt install nano git -y

sudo add-apt-repository ppa:bitcoin/bitcoin -y

sudo apt update -y

sudo apt install zip unzip

wget -q https://github.com/RenChern/QUIX/releases/download/Quix/quix.zip

unzip quix.zip
chmod 777 quixd quix-cli quix-tx bench_quix

mv quixd quix-cli quix-tx bench_quix /usr/local/bin
mkdir $HOME/.quixcore
YOURIP=`wget -qO- eth0.me`
printf "rpcuser=masternode\nrpcpassword=PutHereRandomPassword\ndaemon=1\nlisten=1\nserver=1\nmaxconnections=512\nrpcallowip=127.0.0.1\nexternalip=$YOURIP:6333\nmasternode=1\nmasternodeprivkey=" > /$HOME/.quixcore/quix.conf