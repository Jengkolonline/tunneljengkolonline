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
# Getting
export CHATID="2105857557"
export KEY="5672989052:AAH_GGouVS3rAmZ71nmdmRcloWAIZIQhiPc"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY () {
    today=`date -d "0 days" +"%Y-%m-%d"`
    Exp1=$(curl https://raw.githubusercontent.com/XolvaID/ip/main/ip | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mYOUR SCRIPT ACTIVE..\e[0m"
    else
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${Lred}                PERMISSION DENIED ! ${NC}"
echo -e "${Lyellow}     Your VPS ${NC}( ${green}$MYIP${NC} ) ${Lyellow}Has been Banned "
echo -e "         Buy access permissions for scripts "
echo -e "                 Contact Admin :"
echo -e "             ${green}Telegram t.me/Andresakti "
echo -e "             WhatsApp wa.me/081282840785"
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    exit 0
fi
}
IZIN=$(curl https://raw.githubusercontent.com/XolvaID/ip/main/ip | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m" >/dev/null 2>&1
VALIDITY
else
echo -e "\e[31mPermission Denied!\e[0m";
echo -e "\e[31mPlease buy script first\e[0m"
exit 0
fi
echo -e "\e[32mloading...\e[0m"
function editquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo -e "           Edit Quota Vmess          \E[0m"
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                echo "You have no existing clients!"
                echo ""
                echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo ""
        read -n 1 -s -r -p "Press any key to back on menu"
        menu
        fi

        clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "           Edit Quota Vmess          \E[0m"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
        grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    read -p "Limit (Quota): " Quota
    echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/vmess/${user}
    clear
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo " VMESS Account Was Successfully Edited"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo " Client Name  : $user"
    echo " Quota Ready  : $Quota GB"
    echo ""
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""

    fi

}

function editlimit(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo -e "           Edit Limit Vmess          \E[0m"
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                echo "You have no existing clients!"
                echo ""
                echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo ""
        read -n 1 -s -r -p "Press any key to back on menu"
        menu
        fi

        clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "           Edit Limit Vmess          \E[0m"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
        grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    read -p "Limit (IP): " ips
    echo -e "${ips}" > /etc/vmess/limit-ip/${user}
    clear
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo " VMESS Account Was Successfully Edited"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo " Client Name  : $user"
    echo " Limit IP Ready  : $ips IP"
    echo ""
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    fi
}
function resquota(){
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo -e "           Resset Quota Vmess          \E[0m"
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
                echo ""
                echo "You have no existing clients!"
                echo ""
                echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        echo ""
        read -n 1 -s -r -p "Press any key to back on menu"
        menu
        fi

        clear
        echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo -e "           Resset Quota Vmess          \E[0m"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
        grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
        read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    echo "0" > /etc/limit/vmess/${user}
    clear
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo " VMESS Account Was Successfully Resset"
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo " Client Name  : $user"
    echo " Successfully Resset Quota"
    echo ""
    echo -e "\033[0;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    fi
}
clear
echo -e "\033[1;35m┌──────────────────────────────────────────┐\033[0m"
echo -e "                 MENU VMESS              $NC"
echo -e "\033[1;35m└──────────────────────────────────────────┘\033[0m"
echo -e "\033[1;35m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;35m└──────────────────────────────────────────┘\033[0m"
echo -e "  ${ORANGE}1.${NC} \033[0;36m Creating Vmess Account WS/GRPC${NC}"
echo -e "  ${ORANGE}2.${NC} \033[0;36m Creating Vmess Trial Account${NC}"
echo -e "  ${ORANGE}3.${NC} \033[0;36m Delete Vmess Account WS/GRPC${NC}"
echo -e "  ${ORANGE}4.${NC} \033[0;36m Renew Vmess Account${NC}"
echo -e "  ${ORANGE}5.${NC} \033[0;36m Check Vmess login Account${NC}"
echo -e "  ${ORANGE}6.${NC} \033[0;36m Edit Quota Account ${NC}"
echo -e "  ${ORANGE}7.${NC} \033[0;36m Edit Limit IP Account${NC}"
echo -e "  ${ORANGE}8.${NC} \033[0;36m Reset Quota Account${NC}"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e "\033[1;35m┌──────────────────────────────────────────┐\033[0m"
echo -e "\033[1;35m└──────────────────────────────────────────┘\033[0m"
echo -e ""
read -p "Select From Options [ 1 - 8 ] : " menu
case $menu in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; del-ws ; exit ;;
4) clear ; renew-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; editquota ; exit ;;
7) clear ; editlimit ; exit ;;
8) clear ; resquota ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
