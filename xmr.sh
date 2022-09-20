myworker=$(date +'%d%m_')
username=$HOSTNAME
myworker+=$username
sudo apt-get update && apt-get upgrade -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo git clone https://github.com/xmrig/xmrig.git
sudo mkdir xmrig/build && cd xmrig/build
sudo cmake ..
sudo make -j$(nproc)
sudo nohup ./xmrig -o xmr-us-east1.nanopool.org:14444 -u 86hGqmkgwQUecR9zFY4krRKJfdci8iAk1Gv8dtpNhPbzAzUFmTtbs1JH2cHo7v67QyjfYPNQ8Aj1GVKv3MSk56a64FpJq1f -k --tls --rig-id $myworker &
