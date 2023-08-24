#!/bin/bash

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
domain=$(cat /etc/xray/domain)
modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
modifyTime1=$(date +%s -d "${modifyTime}")
currentTime=$(date +%s)
stampDiff=$(expr ${currentTime} - ${modifyTime1})
days=$(expr ${stampDiff} / 86400)
remainingDays=$(expr 90 - ${days})
tlsStatus=${remainingDays}
if [[ ${remainingDays} -le 0 ]]; then
tlsStatus="expired"
fi
uptime="$(uptime -p | cut -d " " -f 2-10)"
Repo1="https://raw.githubusercontent.com/Jengkolonline/izinn/main/"
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
dmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
vmess=$(cat /etc/vmess/.vmess.db | wc -l)
vless=$(cat /etc/vless/.vless.db | wc -l)
trojan=$(cat /etc/trojan/.trojan.db | wc -l)
ss=$(cat /etc/shadowsocks/.shadowsocks.db | wc -l)
trgo=$(cat /etc/trojango/.trojango.db | wc -l) 
total_ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
IPVPS=$(curl -s ipinfo.io/ip )
cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
uram=$( free -m | awk 'NR==2 {print $3}' )
fram=$( free -m | awk 'NR==2 {print $4}' )
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $3}')
#UDPCORE="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
PS="https://jengkolonline.biz.id/psiphon2"
clear
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[35m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[35m│$NC\033[33m                  JENGKOLONLINE TUNELING                  $NC\033[35m│\e[0m"
echo -e " \033[35m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[36m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[36m│$NC \e[36m Operating System     \e[0m:  "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e " \033[36m│$NC \e[36m Total Amount Of RAM  \e[0m:  $tram MB"
echo -e " \033[36m│$NC \e[36m System Uptime        \e[0m:  $uptime "
echo -e " \033[36m│$NC \e[36m Isp Name             \e[0m:  $ISP"
echo -e " \033[36m│$NC \e[36m Domain               \e[0m:  $domain"
echo -e " \033[36m│$NC \e[36m Ip Vps               \e[0m:  $IPVPS"
echo -e " \033[36m│$NC \e[36m CPU Usage            \e[0m:  $cpu_usage"
echo -e " \033[36m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[31m│$NC \e[34m Traffic\e[0m       \e[31mToday      \e[33mYesterday        \e[32mMonth         $NC\033[31m│$NC"
echo -e " \033[31m│$NC \e[36m Download\e[0m   ${putih}   $dtoday    $dyest       $dmon   ${NC}                            $NC\033[31m│$NC"
echo -e " \033[31m│$NC \e[36m Upload\e[0m     ${putih}   $utoday    $uyest       $umon   ${NC}                            $NC\033[31m│$NC"
echo -e " \033[31m│$NC \e[36m Total\e[0m       ${putih}  $ttoday    $tyest       $tmon  ${NC}                             $NC\033[31m│$NC"
echo -e " \033[31m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e "                     \033[33m╭═════════════════════╮\e[0m"
echo -e "                        \e[33m Ssh/Ovpn \e[0m   =${putih} $total_ssh\e[0m"
echo -e "                        \e[31m Vmess \e[0m      =${putih} $vmess\e[0m"
echo -e "                        \e[32m Vless \e[0m      =${putih} $vless\e[0m"
echo -e "                        \e[36m Troja \e[0m      =${putih} $trojan\e[0m"
echo -e "                        \e[34m Shadowsoks \e[0m =${putih} $ss\e[0m"
echo -e "                        \e[34m Trojan GO \e[0m  =${putih} $trgo\e[0m"
echo -e "                     \033[33m╰═════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " \033[32m│\e[0m [\e[36m01\e[0m] SSH & OpenVPN Menu     \033[32m│\e[0m [\e[36m08\e[0m] L2TP Menu $NC"
echo -e " \033[32m│\e[0m [\e[36m02\e[0m] Vmess Menu             \033[32m│\e[0m [\e[36m09\e[0m] PPTP Menu  $NC"
echo -e " \033[32m│\e[0m [\e[36m03\e[0m] Vless Menu             \033[32m│\e[0m [\e[36m10\e[0m] SSTP Menu $NC"
echo -e " \033[32m│\e[0m [\e[36m04\e[0m] Trojan GFW Menu        \033[32m│\e[0m [\e[36m11\e[0m] SHADOWSOKS R Menu $NC"
echo -e " \033[32m│\e[0m [\e[36m05\e[0m] Shadowsoks Menu        \033[32m│\e[0m [\e[36m12\e[0m] SHADOWSOKS-Libev Menu $NC"
echo -e " \033[32m│\e[0m [\e[36m06\e[0m] Trojan Go Menu          \033[32m│\e[0m [\e[36m13\e[0m] WIREGUARD $NC"
echo -e " \033[32m│\e[0m [\e[36m07\e[0m] Psiphon Pro            \033[33m│\e[0m [\e[36m14\e[0m] SYSTEM Menu $NC"
echo -e " \033[32m╰══════════════════════════════════════════════════════════╯${NC}"
echo -e " \033[34m╭══════════════════════════════════════════════════════════╮${NC}"
echo -e " \033[34m│$NC \e[31m Client Name${NC}   :  ${putih}$Name${NC}                                       $NC\033[34m│$NC"
echo -e " \033[34m│$NC \e[33m Exp Script${NC}    :  ${putih}$Exp${NC}                                       $NC\033[34m│$NC"
echo -e " \033[34m│$NC \e[32m Version${NC}       :  ${putih}2.6.6${NC}                                  $NC\033[34m│$NC"
echo -e " \033[34m╰══════════════════════════════════════════════════════════╯${NC}"
echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e ""
echo -e   " Press x or [ Ctrl+C ] • To-Exit-Script"
echo -e   ""
read -p "  Select menu :  "  opt
echo -e   ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-trojan ;;
5) clear ; m-ssws ;;
6) clear ; menu-trgo ;;
7) clear ; wget ${PS} && chmod +x psiphon2 && ./psiphon2 ;;
8) clear ; menu-l2tp ;;
9) clear ; menu-pptp ;;
10) clear ; menu-sstp ;;
11) clear ; menu-ssr ;;
12) clear ; menu-ssl ;;
13) clear ; menu-wg ;;
14) clear ; menu-set ;;
x) exit ;;
esac
