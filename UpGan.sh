#!/bin/bash
#variable
b='\033[34;1m'
g='\033[32;1m'
p='\033[35;1m'
c='\033[36;1m'
r='\033[31;1m'
w='\033[37;1m'
y='\033[33;1m'


isi(){
     url=http://ip-api.com/
     echo $g"MASUKAN NAMA LU TOD ...."
     read nick
     echo "TERIMAKASIH $nick"
     echo $y"MASUKKAN IP TARGET" 
     read ip 
     curl -s $url$ip
     echo $y"TERIMA KASIH KERANA MENGGUNAKAN TOOLS ./TN.SPUKY"
} 
perintah(){
    echo $y"INGIN TERUSKAN?"
    read -p "y/n :" pill
    if [ $pill = "y" ];then
         clear
         banner
         isi
    else 
         echo $r"PERINTAH DI MASUKKAN SALAH"
         exit
    fi
}
banner(){
figlet TN.SPUKY|lolcat
}
perintah