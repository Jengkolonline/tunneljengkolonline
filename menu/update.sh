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
# Color Validation
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

echo -e "${green}------------------------------------------${NC}"
echo -e "${RED} UPDATE AKAN DI MULAI ${NC}"
echo -e "${RED} MOHON BERSABAR ${NC}"
echo -e "${green}------------------------------------------${NC}"
sleep 2
clear
cd /usr/bin
# menu
wget -O menu "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-vmess.sh"
wget -O menu-vless "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-vless.sh"
wget -O running "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-trgo.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-trojan.sh"
wget -O m-ssws "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/m-ssws.sh"
wget -O updatebbr "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/updatebbr.sh"
wget -O update "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/update.sh"
wget -O prot "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/prot.sh"

# menu ssh ovpn
wget -O menu-ssh "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-ssh.sh"
wget -O usernew "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/delete.sh"
wget -O autokill "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/tendang.sh"

# menu system
wget -O menu-set "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-set.sh"
wget -O menu-domain "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/speedtest_cli.py"
wget -O about "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/about.sh"
wget -O auto-reboot "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/menu/bw.sh"

# change port
wget -O port-ssl "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/port/port-ssl.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/port/port-ovpn.sh"


wget -O xp "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/xp.sh"
wget -O acs-set "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/acs-set.sh"

wget -O sshws "https://raw.githubusercontent.com/Jengkolonline/tunneljengkolonline/main/ssh/sshws.sh"

#bot
wget -O bot "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot.sh"
wget -O add-bot-notif "https://raw.githubusercontent.com/Jengkolonline/bot/main/add-bot-notif.sh"
wget -O del-bot-notif "https://raw.githubusercontent.com/Jengkolonline/bot/main/del-bot-notif.sh"
wget -O menu-bot "https://raw.githubusercontent.com/Jengkolonline/bot/main/menu-bot.sh"

#menu tambahan
wget -O menu-sstp "https://raw.githubusercontent.com/Jengkolonline/sstp/main/menu-sstp.sh"
wget -O menu-l2tp "https://raw.githubusercontent.com/Jengkolonline/ipsec/main/menu-l2tp.sh"
wget -O menu-pptp "https://raw.githubusercontent.com/Jengkolonline/ipsec/main/menu-pptp.sh"
wget -O menu-ssr "https://raw.githubusercontent.com/Jengkolonline/ssr/main/menu-ssr.sh"
wget -O menu-ssl "https://raw.githubusercontent.com/Jengkolonline/shadowsocks-libev/main/menu-ssl.sh"
wget -O menu-wg "https://raw.githubusercontent.com/Jengkolonline/wireguard/main/menu-wg.sh"

chmod +x menu
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x m-ssws
chmod +x updatebbr
chmod +x update
chmod +x prot

chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x renew
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokill
chmod +x ceklim
chmod +x tendang

chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw

chmod +x port-ssl
chmod +x port-ovpn

chmod +x xp
chmod +x acs-set
chmod +x sshws

chmod +x bot
chmod +x add-bot-notif
chmod +x del-bot-notif
chmod +x menu-bot

chmod +x menu-sstp
chmod +x menu-l2tp
chmod +x menu-pptp
chmod +x menu-ssr
chmod +x menu-ssl
chmod +x menu-wg

# vmess
echo -e "${Green}[ INFO ]${NC} ${Green}Downloading Main Vmess${NC}"
wget -O add-ws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/add-ws.sh" && chmod +x add-ws
wget -O trialvmess "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/trialvmess.sh" && chmod +x trialvmess
wget -O renew-ws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/renew-ws.sh" && chmod +x renew-ws
wget -O del-ws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/del-ws.sh" && chmod +x del-ws
wget -O cek-ws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/cek-ws.sh" && chmod +x cek-ws
sleep 0.5
# vless
echo -e "${Green}[ INFO ]${NC} ${Green}Downloading Main Vless${NC}"
wget -O add-vless "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/add-vless.sh" && chmod +x add-vless
wget -O trialvless "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/trialvless.sh" && chmod +x trialvless
wget -O renew-vless "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/renew-vless.sh" && chmod +x renew-vless
wget -O del-vless "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/del-vless.sh" && chmod +x del-vless
wget -O cek-vless "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/cek-vless.sh" && chmod +x cek-vless
sleep 0.5
# trojan
echo -e "${Green}[ INFO ]${NC} ${Green}Downloading Main Trojan${NC}"
wget -O add-tr "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/add-tr.sh" && chmod +x add-tr
wget -O trialtrojan "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/trialtrojan.sh" && chmod +x trialtrojan
wget -O del-tr "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/del-tr.sh" && chmod +x del-tr
wget -O renew-tr "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/renew-tr.sh" && chmod +x renew-tr
wget -O cek-tr "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/cek-tr.sh" && chmod +x cek-tr
sleep 0.5
# shadowsocks
echo -e "${Green}[ INFO ]${NC} ${Green}Downloading Main shadowsoks${NC}"
wget -O add-ssws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/add-ssws.sh" && chmod +x add-ssws
wget -O trialssws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/trialssws.sh" && chmod +x trialssws
wget -O del-ssws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/del-ssws.sh" && chmod +x del-ssws
wget -O renew-ssws "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/renew-ssws.sh" && chmod +x renew-ssws
wget -O tcp "https://raw.githubusercontent.com/Jengkolonline/supreme/main/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
wget -O nf "https://raw.githubusercontent.com/Jengkolonline/nonton/main/nf.sh" && chmod +x nf
wget -O menu-tambah "https://raw.githubusercontent.com/Jengkolonline/begeg/main/menu-tambah.sh" && chmod +x menu-tambah
wget -O global "https://raw.githubusercontent.com/Jengkolonline/gelo/main/gelo.sh" && chmod +x global
wget -O sc "https://raw.githubusercontent.com/Jengkolonline/begeg/main/sc.sh" && chmod +x sc
wget -O killtrial "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/killtrial.sh" && chmod +x killtrial
wget -O jilmek "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/jilmek.sh" && chmod +x jilmek
wget -O bdsm "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/bdsm.sh" && chmod +x bdsm
wget -O limiter "https://raw.githubusercontent.com/Jengkolonline/supreme/main/xray/limiter.sh" && chmod +x limiter
wget -O bot-cek-login-ssh "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot-cek-login-ssh.sh" && chmod +x bot-cek-login-ssh
wget -O bot-cek-tr "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot-cek-tr.sh" && chmod +x bot-cek-tr
wget -O bot-cek-vless "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot-cek-vless.sh" && chmod +x bot-cek-vless
wget -O bot-cek-ws "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot-cek-wd.sh" && chmod +x bot-cek-ws
wget -O bot-member-ssh "https://raw.githubusercontent.com/Jengkolonline/bot/main/bot-member-ssh" && chmod +x bot-member-ssh
wget -O menu-backupp "https://raw.githubusercontent.com/Jengkolonline/bot/main/menu-backupp.sh" && chmod +x menu-backupp
wget -O restorebot "https://raw.githubusercontent.com/Jengkolonline/bot/main/restorebot.sh" && chmod +x restorebot
#wget -O wex "https://raw.githubusercontent.com/Jengkolonline/bot/main/wex.sh" && chmod +x wex
cd
mkdir -p /etc/{bot,xray,vmess,websocket,vless,trojan,shadowsocks}
touch /var/log/xray/{access.log,error.log}
chmod 777 /var/log/xray/*.log
touch /etc/bot/.bot.db
touch /etc/vmess/.vmess.db
touch /etc/vless/.vless.db
touch /etc/trojan/.trojan.db
touch /etc/ssh/.ssh.db
touch /etc/shadowsocks/.shadowsocks.db
clear
echo -e "${green}------------------------------------------${NC}"
echo -e "${RED} UPDATE SELESAI ${NC}"
echo -e "${RED} TERIMAKASIH TELAH MENUNGGU ${NC}"
echo -e "${green}------------------------------------------${NC}"
sleep 2
clear
reboot
