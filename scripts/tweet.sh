#!/bin/sh

CONFIG=${HOME}/.pynanowit.config
test -e ${CONFIG} && source ${CONFIG}

LOGIN_URL=${PYNANOWIT_BASE_URL:?}/login
POST_URL=${PYNANOWIT_BASE_URL}/add_message
LOGOUT_URL=${PYNANOWIT_BASE_URL}/logout
USERNAME=${PYNANOWIT_USERNAME}
PASSWORD=${PYNANOWIT_PASSWORD}
SECURITY=${PYNANOWIT_SECURITY}

tweet(){
  COOKIES_FILE=`mktemp`
  TWEET="$@"
  curl -sS ${SECURITY} --cookie-jar ${COOKIES_FILE} -X POST -d "username=${USERNAME:?}&password=${PASSWORD:?}" ${LOGIN_URL} > /dev/null
  curl -sS ${SECURITY} --cookie ${COOKIES_FILE} -X POST -d "text=${TWEET}" ${POST_URL} > /dev/null
  curl -sS ${SECURITY} --cookie ${COOKIES_FILE} ${LOGOUT_URL} > /dev/null
  rm ${COOKIES_FILE}
}

tweet "$@" &
