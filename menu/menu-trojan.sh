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
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
export CHATID="1830342336"
export KEY="6320035110:AAE6otySdlNHPhKom2PNtp8yZn8X8rZS7LE"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
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
function editquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#! " "/etc/trojan/.trojan.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Quota Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^#! " "/etc/trojan/.trojan.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (Quota): " Quota
echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/trojan/${user}
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " Trojan Account Was Successfully Edited"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Quota Ready  : $Quota GB"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
function editlimit(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#! " "/etc/trojan/.trojan.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Edit Limit Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^#! " "/etc/trojan/.trojan.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
read -p "Limit (IP): " ips
echo -e "${ips}" > /etc/trojan/limit-ip/${user}
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " Trojan Account Was Successfully Edited"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Limit IP Ready  : $ips IP"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
function resquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#! " "/etc/trojan/.trojan.db")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Resset Quota Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo "You have no existing clients!"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "           Resset Quota Trojan          \E[0m"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
grep -E "^#! " "/etc/trojan/.trojan.db" | cut -d ' ' -f 2 | column -t | sort | uniq
echo ""
red "tap enter to go back"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -rp "Input Username : " user
if [ -z $user ]; then
menu
else
echo "0" > /etc/limit/trojan/${user}
clear
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo " TROJAN Account Was Successfully Resset"
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
echo " Client Name  : $user"
echo " Successfully Resset Quota"
echo ""
echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
fi
}
clear
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                       MENU Trojan                        $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC [01]${NC} \033[0;36m Creating Trojan Account WS/GRPC${NC}"
echo -e " \033[35m│$NC [02]${NC} \033[0;36m Trial Trojan Account WS/GRPC${NC}"
echo -e " \033[35m│$NC [03]${NC} \033[0;36m Delete Trojan Account WS/GRPC${NC}"
echo -e " \033[35m│$NC [04]${NC} \033[0;36m Renew Trojan Account${NC}"
echo -e " \033[35m│$NC [05]${NC} \033[0;36m Check Trojan login Account${NC}"
echo -e " \033[35m│$NC [06]${NC} \033[0;36m Edit Quota Account ${NC}"
echo -e " \033[35m│$NC [07]${NC} \033[0;36m Edit Limit IP Account${NC}"
echo -e " \033[35m│$NC [08]${NC} \033[0;36m Reset Quota Account${NC}"
echo -e " \033[35m│$NC"
echo -e " \033[35m│$NC [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e " \033[35m│$NC"
echo -e " \033[35m│$NC Press x or [ Ctrl+C ] • To-Exit"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e ""
read -p " Select From Options [ 1 - 7 ] : " menu
case $menu in
1) clear ; add-tr ;;
2) clear ; trialtrojan ;;
4) clear ; renew-tr ;;
3) clear ; del-tr ;;
5) clear ; cek-tr ;;
6) clear ; editquota ; exit ;;
7) clear ; editlimit ; exit ;;
8) clear ; resquota ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
