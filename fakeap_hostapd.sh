interface=wlan0
channel=1
ssid=SOMESSID
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
# -1 = log all messages
#logger_syslog=-1
logger_stdout=-1

# 2 = informational messages
#logger_syslog_level=1
logger_stdout_level=0

ctrl_interface=/var/run/hostapd
ctrl_interface_group=0


