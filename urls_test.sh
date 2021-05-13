<< 'DESCRIPTION'
    This script prints urls and http response codes for url.

    It can be used for testing urls for site.

    If there will be a lot of urls, output can be suppressed
    and if-statement with 200 status code equality can be added. 
DESCRIPTION

#!/bin/bash

domain="localhost:8080"

## declare an array variable
declare -a arr=("" "index.html" "login" "main" "user")

## now loop through the above array
for i in "${arr[@]}"
do
    url="http://$domain/$i"
    code=$(curl --head $url -o /dev/null -w '%{http_code}\n' -s)
    echo "$url $code"
done


