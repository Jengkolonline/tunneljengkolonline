#!/bin/bash
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\033[0;33m │\033[0m            \033[0;32mPORT SERVICE INFO\033[0m             \033[0;33m|\033[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH		         : 22"  | tee -a log-install.txt
echo "   - SSH Websocket	     : 80 [OFF]" | tee -a log-install.txt
echo "   - SSH SSL Websocket   : 443" | tee -a log-install.txt
echo "   - Stunnel4		         : 447, 777" | tee -a log-install.txt
echo "   - Dropbear		         : 109, 143" | tee -a log-install.txt
echo "   - Badvpn		           : 7100-7900" | tee -a log-install.txt
echo "   - Nginx		           : 81" | tee -a log-install.txt
echo "   - Vmess TLS		       : 443" | tee -a log-install.txt
echo "   - Vmess None TLS	     : 80" | tee -a log-install.txt
echo "   - Vmess Grpc		       : 443" | tee -a log-install.txt
echo "   - Vless TLS		       : 443" | tee -a log-install.txt
echo "   - Vless None TLS	     : 80" | tee -a log-install.txt
echo "   - Vless Grpc		       : 443" | tee -a log-install.txt
echo "   - Trojan WS TLS	     : 443" | tee -a log-install.txt
echo "   - Trojan WS none TLS  : 80" | tee -a log-install.txt
echo "   - Trojan Grpc  	     : 443" | tee -a log-install.txt
echo "   - Shadowsocks WS TLS  : 443" | tee -a log-install.txt
echo "   - Shadowsocks none TLS: 80" | tee -a log-install.txt
echo "   - Shadowsocks Grpc	   : 443" | tee -a log-install.txt
echo "   - Trojan Go		       : 443" | tee -a log-install.txt
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
