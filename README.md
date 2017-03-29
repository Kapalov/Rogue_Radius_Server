# Rogue_Radius_Server
Rogue Radius Server (freeradius patch + hostapd). 

# 1. Install freeradius with patch
How to: https://github.com/brad-anton/freeradius-wpe
# 2. Create hostapd.conf - I use mana-tooklit (Kali linux)
apt-get install mana-toolkit hostapd
# Start the hostapd.conf:
# 3. Script for start
start.sh

# after that edit eap.conf in /usr/local/etc/raddb:

in eap { 
			default_eap_type = peap
gtc {
			auth_type = PAP
peap {
				default_eap_type = gtc
# 4. Save and run: radiusd -X
# 5. After that run: hostapd  hostapd-mana-eaponly.conf

# logs: usr/local/var/log/radius# leafpad freeradius-server-wpe.log
