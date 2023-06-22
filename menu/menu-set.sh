#!/bin/bash
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
RDP="https://raw.githubusercontent.com/Jengkolonline/XRAY/main/"
WEBU="http://files.webuzo.com/install.sh"
VESTA="http://vestacp.com/pub/vst-install.sh"
UI="(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh) v1.6.1"
PT="(curl -s https://pterodactyl-installer.se)"
CB="https://cyberpanel.net/install.sh"
BOT="https://raw.githubusercontent.com/Jengkolonline/jengkol/main/xolpanel.sh"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m          • SYSTEM MENU •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Panel Domain"
echo -e " [\e[36m•2\e[0m] Change Port All Account"
echo -e " [\e[36m•3\e[0m] Webmin Menu"
echo -e " [\e[36m•4\e[0m] Speedtest VPS"
echo -e " [\e[36m•5\e[0m] About Script"
echo -e " [\e[36m•6\e[0m] Set Auto Reboot"
echo -e " [\e[36m•7\e[0m] Restart All Service"
echo -e " [\e[36m•8\e[0m] Change Banner"
echo -e " [\e[36m•9\e[0m] Cek Bandwith"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m       • SYSTEM MENU Tambahan •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•10\e[0m] Install RDP"
echo -e " [\e[36m•11\e[0m] Install WEBUZO"
echo -e " [\e[36m•12\e[0m] Install VESTA"
echo -e " [\e[36m•13\e[0m] Install UI"
echo -e " [\e[36m•14\e[0m] Install Pterodactyl"
echo -e " [\e[36m•15\e[0m] Install Cyberpanell"
echo -e " [\e[36m•16\e[0m] Update Script"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m       • SYSTEM MENU BOT Telegram •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•17\e[0m] ADD NOTIF BOT"
echo -e " [\e[36m•18\e[0m] ADD BOT PANEL"
echo -e " [\e[36m•19\e[0m] Inpo Prot Server"
echo -e " [\e[36m•20\e[0m] UPDATE BBR"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e   ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; menu-domain ; exit ;;
2) clear ; port-change ; exit ;;
3) clear ; menu-webmin ; exit ;;
4) clear ; speedtest ; exit ;;
5) clear ; about ; exit ;;
6) clear ; auto-reboot ; exit ;;
7) clear ; restart ; exit ;;
8) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
9) clear ; bw ; exit ;;
10) clear ; wget ${RDP}/foldder/ins-rdp.sh && chmod +x ins-rdp.sh && ./ins-rdp.sh ; exit ;;
11) clear ; wget -N ${WEBU} && chmod 0755 install.sh && ./install.sh ; exit ;;
12) clear ; curl ${VESTA} | bash ; exit ;;
13) clear ; bash ${UI} ; exit ;;
14) clear ; bash ${PT} ; exit ;;
15) clear ; wget -O installer.sh ${CB} && chmod +x install.sh && ./install.sh ; exit ;;
16) clear ; update ; exit ;;
17) clear ; bot ; exit ;;
18) clear ; wget ${BOT}xolpanel.sh && chmod +x xolpanel.sh && ./xolpanel.sh ; exit ;;
19) clear ; prot ; exit ;;
20) clear ; updatebbr ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac
