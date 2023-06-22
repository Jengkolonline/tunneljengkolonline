#!/bin/bash
# SL
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
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
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/trojan-go/akun.conf")
	if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
		echo ""
		echo "You have no existing clients!"
		exit 1
	fi

	echo ""
	echo " Select the existing client you want to remove"
	echo " Press CTRL+C to return"
	echo " ==============================="
	echo "     No  Expired   User"
	grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 | nl -s ') '
	until [[ ${CLIENT_NUMBER} -ge 1 && ${CLIENT_NUMBER} -le ${NUMBER_OF_CLIENTS} ]]; do
		if [[ ${CLIENT_NUMBER} == '1' ]]; then
			read -rp "Select one client [1]: " CLIENT_NUMBER
		else
			read -rp "Select one client [1-${NUMBER_OF_CLIENTS}]: " CLIENT_NUMBER
		fi
	done
CLIENT_NAME=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2-3 | sed -n "${CLIENT_NUMBER}"p)
user=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 2 | sed -n "${CLIENT_NUMBER}"p)
exp=$(grep -E "^### " "/etc/trojan-go/akun.conf" | cut -d ' ' -f 3 | sed -n "${CLIENT_NUMBER}"p)
sed -i "/^### $user $exp/d" /etc/trojan-go/akun.conf
sed -i '/^,"'"$user"'"$/d' /etc/trojan-go/config.json
systemctl restart trojan-go.service
service cron restart
clear
echo ""
echo "============================"
echo "  TrojanGo Account Deleted  "
echo "============================"
echo "Username : $user"
echo "Expired  : $exp"
echo "============================"
echo "Script Mod By Jengkolonline"
