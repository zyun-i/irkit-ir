#!/bin/sh
DIR=`dirname ${0}`
ADDRESS=http://iRKit9336.local/messages
COMMAND=`cat ${DIR}/$1`
MESSAGE=message\=${COMMAND}

curl -i "${ADDRESS}" \
-H "X-Requested-With: curl" \
-d ${MESSAGE}

