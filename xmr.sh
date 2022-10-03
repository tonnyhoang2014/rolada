myworker=$(date +'%d%m_')
username=$HOSTNAME
myworker+=$username
sudo bash -c 'echo -e "[Unit]\nDescription=XMRig Miner\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/usr/local/bin/xmrig-6.16.2/xmrig -o xmr-asia1.nanopool.org:14444 -u 86hGqmkgwQUecR9zFY4krRKJfdci8iAk1Gv8dtpNhPbzAzUFmTtbs1JH2cHo7v67QyjfYPNQ8Aj1GVKv3MSk56a64FpJq1f --randomx-no-rdmsr --coin monero --rig-id myworker\n\n[Install]\nWantedBy=multi-user.target" > /etc/systemd/system/xmrig.service'
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
sudo reboot &
