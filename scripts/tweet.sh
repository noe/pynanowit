#!/bin/sh

LOGIN_URL=${PYNANOWIT_BASE_URL:?}/login
POST_URL=${PYNANOWIT_BASE_URL}/add_message
LOGOUT_URL=${PYNANOWIT_BASE_URL}/logout

tweet(){
  COOKIES_FILE=`mktemp`
  TWEET="$@"
  curl -sS --cookie-jar ${COOKIES_FILE}  -d "username=${USERNAME:?}&password=${PASSWORD:?}" ${LOGIN_URL} > /dev/null
  curl -sS --cookie ${COOKIES_FILE} -X POST -d "text=${TWEET}" ${POST_URL} > /dev/null
  curl -sS --cookie ${COOKIES_FILE} ${LOGOUT_URL} > /dev/null
  rm ${COOKIES_FILE}
}

tweet "$@" &
