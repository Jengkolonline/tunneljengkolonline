#!/bin/bash
#installer Websocker tunneling 
# Getting
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/Jengkolonline/izinn/main/ip"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Jengkol_Online"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6282372139631"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
cd

#Proxy OpenVPN
wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/sshws/ws-ovpn && chmod +x /usr/local/bin/ws-ovpn

#izin permision
chmod +x /usr/local/bin/ws-ovpn

##System Websocket-OpenVPN Python
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/sshws/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service