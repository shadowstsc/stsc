#!/bin/bash
function checking_sc() {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Gress-Cell/permission/main/ip | awk '{print $4}')

    if echo "$IZIN" | grep -wq "$MYIP"; then
        echo "IZIN DITERIMA ANJING"
    else
        echo -e "\e[38;5;162m────────────────────────────────────────────\033[0m"
        echo -e "\033[44m          404 NOT FOUND AUTOSCRIPT          \033[0m"
        echo -e "\e[38;5;162m────────────────────────────────────────────\033[0m"
        echo -e ""
        echo -e "           \e[38;5;196mPERMISSION DENIED !\033[0m"
        echo -e "  \033[0;36mYour VPS IP $MYIP has been banned.\033[0m"
        echo -e "    \033[0;36mBuy access permissions for scripts.\033[0m"
        echo -e "            \033[0;36mContact Admin :\033[0m"
        echo -e "     \033[2;32mWhatsApp\033[0m https://wa.me/+62 857-0814-1464"
        echo -e "\e[38;5;162m────────────────────────────────────────────\033[0m"
        exit 1  # Exit with non-zero status to indicate failure // Lunatix
    fi
}

checking_sc




MYIP=$(curl -sS ipv4.icanhazip.com)

#install
cp /media/cybervpn/var.txt /tmp
cp /root/cybervpn/var.txt /tmp
rm -rf cybervpn
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
cd /media/
rm -rf cybervpn
wget https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cybervpn.zip
unzip cybervpn.zip
cd cybervpn
rm var.txt
rm database.db
pip3 install -r requirements.txt
pip install pillow
pip install speedtest-cli
pip3 install aiohttp
pip3 install paramiko
#isi data
nsdom=$(cat /root/nsdomain)
domain=$(cat /etc/xray/domain)
clear
clear
echo
echo "INSTALL BOT CREATE SSH via TELEGRAM"
read -e -p "[*] Input Your Id Telegram :" admin
read -e -p "[*] Input Your bot Telegram :" token
read -e -p "[*] Input username Telegram :" user

echo "$token" > /root/.notifbot
echo "$admin" >> /root/.notifbot

cat > /media/cybervpn/var.txt << END
ADMIN="$admin"
BOT_TOKEN="$token"
DOMAIN="$domain"
DNS="$nsdom"
PUB="7fbd1f8aa0abfe15a7903e837f78aba39cf61d36f183bd604daa2fe4ef3b7b59"
OWN="$user"
SALDO="100000"
END


clear
echo "Done"
echo "Your Data Bot"
echo -e "==============================="
echo "Api Token     : $token"
echo "ID            : $admin"
echo "DOMAIN        : $domain"
echo -e "==============================="
echo "Setting done"


rm -f /usr/bin/nenen

echo -e '#!/bin/bash\ncd /media/\npython3 -m cybervpn' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/cybervpn.service << END
[Unit]
Description=Simple CyberVPN - @CyberVPN
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start cybervpn
systemctl enable cybervpn

clear
echo "downloading asset"

wget -q -O /usr/bin/panelbot "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/panelbot.sh" && chmod +x /usr/bin/panelbot





wget -q -O /usr/bin/addnoobz "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/addnoobz.sh" && chmod +x /usr/bin/addnoobz



wget -q -O /media/log-install.txt "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/log-install.txt"



wget -q -O /usr/bin/add-vless "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/addtr "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/addtr.sh" && chmod +x /usr/bin/addtr


wget -q -O /usr/bin/addws "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/addws.sh" && chmod +x /usr/bin/addws


wget -q -O /usr/bin/addss "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/addss.sh" && chmod +x /usr/bin/addss

wget -q -O /usr/bin/cek-ssh "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-ssh.sh" && chmod +x /usr/bin/cek-ssh



wget -q -O /usr/bin/cek-ss "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-ss.sh" && chmod +x /usr/bin/cek-ss




wget -q -O /usr/bin/cek-tr "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/cek-vless "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/cek-ws "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/del-vless "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/del-vless.sh" && chmod +x /usr/bin/del-vless




wget -q -O /usr/bin/cek-noobz "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-noobz.sh" && chmod +x /usr/bin/cek-noobz



wget -q -O /usr/bin/deltr "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/deltr.sh" && chmod +x /usr/bin/deltr

wget -q -O /usr/bin/delws "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/delws.sh" && chmod +x /usr/bin/delws



wget -q -O /usr/bin/delss "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/delss.sh" && chmod +x /usr/bin/delss



wget -q -O /usr/bin/renew-ss "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/renew-ss.sh" && chmod +x /usr/bin/renew-ss


wget -q -O /usr/bin/renewtr "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/renewtr.sh" && chmod +x /usr/bin/renewtr


wget -q -O /usr/bin/renewvless "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/renewvless.sh" && chmod +x /usr/bin/renewvless


wget -q -O /usr/bin/renewws "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/renewws.sh" && chmod +x /usr/bin/renewws


wget -q -O /usr/bin/cek-mws "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-mws.sh" && chmod +x /usr/bin/cek-mws

wget -q -O /usr/bin/cek-mvs "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-mvs.sh" && chmod +x /usr/bin/cek-mvs


wget -q -O /usr/bin/cek-mss "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-mss.sh" && chmod +x /usr/bin/cek-mss



wget -q -O /usr/bin/cek-mts "https://raw.githubusercontent.com/Gress-Cell/v1/main/Bot/cek-mts.sh" && chmod +x /usr/bin/cek-mts

cp /tmp/var.txt /media/cybervpn
rm -rf bot.sh
rm -rf bot.sh.1
clear
clear
echo " Installations complete, type /menu on your bot "

rm /media/cybervpn.zip
