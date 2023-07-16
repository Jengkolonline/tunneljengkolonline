#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting
export CHATID="1830342336"
export KEY="6320035110:AAE6otySdlNHPhKom2PNtp8yZn8X8rZS7LE"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
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
clear
#Domain
domain=$(cat /etc/xray/domain)

echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                       MENU SSH                           $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC [1].${NC}\033[0;36m Create SSH & OpenVPN Account${NC}"
echo -e " \033[35m│$NC [2].${NC}\033[0;36m Trial SSH & OpenVPN ${NC}"
echo -e " \033[35m│$NC [3].${NC}\033[0;36m Renew SSH & OpenVPN ${NC}"
echo -e " \033[35m│$NC [4].${NC}\033[0;36m Check User Login SSH & OpenVPN${NC}"
echo -e " \033[35m│$NC [5].${NC}\033[0;36m Daftar Member SSH & OpenVPN ${NC}"
echo -e " \033[35m│$NC [6].${NC}\033[0;36m Hapus SSH & OpenVpn Account ${NC}"
echo -e " \033[35m│$NC [7].${NC}\033[0;36m Hapus User Expired SSH & OpenVPN ${NC}"
echo -e " \033[35m│$NC [8].${NC}\033[0;36m Set up Autokill SSH ${NC}"
echo -e " \033[35m│$NC [9].${NC}\033[0;36m Cek User Multi Login SSH ${NC}"                                                                   
echo -e " \033[35m│$NC [10].${NC}\033[0;36mExit ${NC}"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e ""
read -p " Select From Options [ 1 - 10 ] : " menu
echo -e ""
case $menu in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; cek ; exit ;;
5) clear ; member ; exit ;;
6) clear ; hapus ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
10) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; m-sshovpn ;;
esac
