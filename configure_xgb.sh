echo "Configuring XRDP for Xorg session"
echo "Making Backup of xrdp.ini"
cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
echo "Before"
cat /etc/xrdp/xrdp.ini | grep '#tcp_send_buffer_bytes='
sudo sed -i 's/#tcp_send_buffer_bytes=.*$/tcp_send_buffer_bytes=4194304/g' /etc/xrdp/xrdp.ini
echo "After"
cat /etc/xrdp/xrdp.ini | grep '#tcp_send_buffer_bytes='
sudo systemctl restart xrdp

# SECOND STREP 

sudo sysctl -w net.core.wmem_max=8388608
echo "Creating /etc/sysctl.d/xrdp.conf"
sudo bash -c 'echo "net.core.wmem_max = 8388608" > /etc/sysctl.d/xrdp.conf'
sudo sysctl -p /etc/sysctl.d/xrdp.conf