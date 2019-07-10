#!/bin/bash

MYAPIKEY="YOUAPIKEY"

[[ ! -z "$MAC" ]]  && {

	MACA=$(curl -XGET "https://api.macaddress.io/v1?apiKey=${MYAPIKEY}&output=vendor&search=${MAC}" 2>/dev/null)
	[[ -z "$MACA" ]] && MAC="no found!"
	echo -e "${MAC} ${MACA}"
	exit 0
} || {
        echo "Please provide MAC address as MAC shell variable to resolve."
	exit 1
     }
