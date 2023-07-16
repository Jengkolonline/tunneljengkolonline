#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################
# Getting
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
clear  
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domen=`cat /etc/xray/domain`
else
domen=`cat /etc/v2ray/domain`
fi
PUB=$( cat /etc/slowdns/server.pub )
NS=`cat /etc/xray/dns`
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`

echo -e " \033[31m##########\033[33m##########\033[32m##########\033[34m##########\033[35m##########\033[36m##########\e[0m"
echo -e " \033[31m╭══════════════════════════════════════════════════════════╮\e[0m"
echo -e " \033[34m│$NC\033[33m                       SSH Account                        $NC\033[34m│\e[0m"
echo -e " \033[33m╰══════════════════════════════════════════════════════════╯\e[0m"
echo -e " \033[32m╭══════════════════════════════════════════════════════════╮\e[0m"
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif
read -p "Limit User (GB): " Quota

IP=$(curl -sS ifconfig.me);
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid Proxy" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"

OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
OhpDB=`cat /root/log-install.txt | grep -w "OHP DBear" | cut -d: -f2 | awk '{print $1}'`
OhpOVPN=`cat /root/log-install.txt | grep -w "OHP OpenVPN" | cut -d: -f2 | awk '{print $1}'`

sleep 1
clear
tgl=$(date -d "$masaaktif days" +"%d")
bln=$(date -d "$masaaktif days" +"%b")
thn=$(date -d "$masaaktif days" +"%Y")
expe="$tgl $bln, $thn"
tgl2=$(date +"%d")
bln2=$(date +"%b")
thn2=$(date +"%Y")
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`
mkdir -p /etc/ssh

if [[ ${c} != "0" ]]; then
  echo "${d}" >/etc/ssh/${Login}
fi
DATADB=$(cat /etc/ssh/.ssh.db | grep "^###" | grep -w "${Login}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${Login}\b/d" /etc/ssh/.ssh.db
fi
echo "### ${Login} " >>/etc/ssh/.ssh.db
echo ""

if [[ ! -z "${PID}" ]]; then
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[0;41;36m            SSH Account            \E[0m" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Username    : $Login" | tee -a /etc/log-create-user.log
echo -e "Password    : $Pass" | tee -a /etc/log-create-user.log
echo -e "Expired On  : $exp" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Tinggal Copy: $domen:80/443@$Login:$Pass" | tee -a /etc/log-create-user.log
echo -e "IP          : $IP" | tee -a /etc/log-create-user.log
echo -e "Host        : $domen" | tee -a /etc/log-create-user.log
echo -e "Host DNS    : $NS" | tee -a /etc/log-create-user.log
echo -e "User Quota  : ${Quota} GB" | tee -a /etc/log-create-user.log
echo -e "PUB KEY     : ${PUB}" | tee -a /etc/log-create-user.log
echo -e "OpenSSH     : $opensh" | tee -a /etc/log-create-user.log
echo -e "Dropbear    : $db" | tee -a /etc/log-create-user.log
echo -e "SSH-WS      : $portsshws" | tee -a /etc/log-create-user.log
echo -e "SSH-SSL-WS  : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSH-NOSSL-WS: 8880" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS     : $ssl" | tee -a /etc/log-create-user.log
echo -e "OpenVPN TCP : 1194" | tee -a /etc/log-create-user.log
echo -e "OpenVPN UDP : 2200" | tee -a /etc/log-create-user.log
echo -e "OpenVPN SSL : 110" | tee -a /etc/log-create-user.log
echo -e "OHP Dropbear: 8585" | tee -a /etc/log-create-user.log
echo -e "OHP OpenSSH : 8686" | tee -a /etc/log-create-user.log
echo -e "OHP OpenVPN : 8787" | tee -a /etc/log-create-user.log
echo -e "Prot Squid  : $sqd" | tee -a /etc/log-create-user.log
echo -e "UDPGW       : 7100-7300" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e " 🔰Account OpenVPN🔰 "
echo -e "OpenVPN TCP : 1194 http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN UDP : 2200 http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN SSL : 110 http://$IP:81/client-tcp-ssl.ovpn"
echo -e " 🔰Account OpenVPN OHP🔰 "
echo -e "OpenVPN OHP : 8787 http://$MYIP:81/client-tcp-ohp1194.ovpn"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e " 🔰Account UDP 1🔰 "
echo -e "$domen:54-65535@$Login:$Pass"
echo -e " 🔰Account UDP 2🔰 "
echo -e "$IP:10000-10150@$Login:$Pass"
echo -e " 🔰Account UDP 3🔰 "
echo -e "$domen:1-65535@$Login:$Pass"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Payload WSS" | tee -a /etc/log-create-user.log
echo -e "
GET wss://$sni/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "Payload WS" | tee -a /etc/log-create-user.log
echo -e "
GET / HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD WS OVPN HTTP" | tee -a /etc/log-create-user.log
echo -e "
GET wss://isi_bug_disini/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
#echo -e "URL TEX  :https://$domen:81/ssh-$Login.txt"
#echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log

else

cat >/var/www/html/ssh-$Login.txt <<-END
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            SSH Account            
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Username    : $Login
Password    : $Pass
Expired On  : $exp
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Tinggal Copy: $domen:80/443@$Login:$Pass
IP          : $IP
Host        : $domen
Host DNS    : $NS
PUB KEY     : ${PUB}
User Quota  : ${Quota} GB
OpenSSH     : $opensh
Dropbear    : $db
SSH-WS      : $portsshws
SSH-SSL-WS  : $wsssl
SSH-NOSSL-WS: 8880
SSL/TLS     : $ssl
OpenVPN TCP : 1194
OpenVPN UDP : 2200
OpenVPN SSL : 110
OHP Dropbear: 8585
OHP OpenSSH : 8686
OHP OpenVPN : 8787
Prot Squid  : $sqd
UDPGW       : 7100-7300
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔰Account OpenVPN🔰 
OpenVPN TCP : 1194 http://$IP:81/client-tcp-1194.ovpn
OpenVPN UDP : 2200 http://$IP:81/client-udp-2200.ovpn
OpenVPN SSL : 110 http://$IP:81/client-tcp-ssl.ovpn
🔰Account OpenVPN OHP🔰 
OpenVPN OHP : 8787 http://$MYIP:81/client-tcp-ohp1194.ovpn
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🔰Account UDP 1🔰 
$domen:54-65535@$Login:$Pass
🔰Account UDP 2🔰 
$IP:10000-10150@$Login:$Pass
🔰Account UDP 3🔰 
$domen:1-65535@$Login:$Pass
\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Payload WSS
GET wss://isi_bug_disini/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
Payload WS
GET / HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf][crlf]
PAYLOAD WS OVPN HTTP
GET wss://isi_bug_disini/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
END

echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "\E[0;41;36m            SSH Account            \E[0m" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Username    : $Login" | tee -a /etc/log-create-user.log
echo -e "Password    : $Pass" | tee -a /etc/log-create-user.log
echo -e "Expired On  : $exp" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Tinggal Copy: $domen:80/443@$Login:$Pass" | tee -a /etc/log-create-user.log
echo -e "IP          : $IP" | tee -a /etc/log-create-user.log
echo -e "Host        : $domen" | tee -a /etc/log-create-user.log
echo -e "Host DNS    : $NS" | tee -a /etc/log-create-user.log
echo -e "User Quota  : ${Quota} GB" | tee -a /etc/log-create-user.log
echo -e "PUB KEY     : ${PUB}" | tee -a /etc/log-create-user.log
echo -e "OpenSSH     : $opensh" | tee -a /etc/log-create-user.log
echo -e "Dropbear    : $db" | tee -a /etc/log-create-user.log
echo -e "SSH-WS      : $portsshws" | tee -a /etc/log-create-user.log
echo -e "SSH-SSL-WS  : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSH-NOSSL-WS: 8880" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS     : $ssl" | tee -a /etc/log-create-user.log
echo -e "OpenVPN TCP : 1194" | tee -a /etc/log-create-user.log
echo -e "OpenVPN UDP : 2200" | tee -a /etc/log-create-user.log
echo -e "OpenVPN SSL : 110" | tee -a /etc/log-create-user.log
echo -e "OHP Dropbear: 8585" | tee -a /etc/log-create-user.log
echo -e "OHP OpenSSH : 8686" | tee -a /etc/log-create-user.log
echo -e "OHP OpenVPN : 8787" | tee -a /etc/log-create-user.log
echo -e "Prot Squid  : $sqd" | tee -a /etc/log-create-user.log
echo -e "UDPGW       : 7100-7300" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e " 🔰Account OpenVPN🔰 "
echo -e "OpenVPN TCP : 1194 http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN UDP : 2200 http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN SSL : 110 http://$IP:81/client-tcp-ssl.ovpn"
echo -e " 🔰Account OpenVPN OHP🔰 "
echo -e "OpenVPN OHP : 8787 http://$MYIP:81/client-tcp-ohp1194.ovpn"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e " 🔰Account UDP 1🔰 "
echo -e "$domen:54-65535@$Login:$Pass"
echo -e " 🔰Account UDP 2🔰 "
echo -e "$IP:10000-10150@$Login:$Pass"
echo -e " 🔰Account UDP 3🔰 "
echo -e "$domen:1-65535@$Login:$Pass"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "Payload WSS" | tee -a /etc/log-create-user.log
echo -e "
GET wss://isi_bug_disini/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "Payload WS" | tee -a /etc/log-create-user.log
echo -e "
GET / HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD WS OVPN HTTP" | tee -a /etc/log-create-user.log
echo -e "
GET wss://isi_bug_disini/ HTTP/1.1[crlf]Host: sshws.$domain[crlf]Upgrade: websocket[crlf]Connection: Keep-Alive[crlf][crlf]
" | tee -a /etc/log-create-user.log
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
echo -e "URL TEX  :https://$domen:81/ssh-$Login.txt"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m" | tee -a /etc/log-create-user.log
fi
echo "" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"
menu
