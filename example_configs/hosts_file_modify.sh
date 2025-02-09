#!/bin/bash
HOSTS_FILE="/etc/hosts"
ANGUS="10.1.1.1 angus.paradise.id.au"
LAMBO="10.1.1.3 lambo.paradise.id.au"
RIBEYE="10.1.1.5 ribeye.paradise.id.au"
FIGJAM_MAIL="10.1.1.7 figjam-mail.paradise.id.au"
HOST="NONE"

case "$2" in

ANGUS) HOST=$ANGUS
     ;;

LAMBO) HOST=$LAMBO
     ;;

RIBEYE) HOST=$RIBEYE
     ;;

FIGJAM-MAIL) HOST=$FIGJAM_MAIL
     ;;

*)
     /bin/echo "Error - incorrect host"
     /bin/echo "$0 [ADD/REMOVE] [ANGUS/LAMBO/RIBEYE/FIGJAM-MAIL]"
     exit 1
     ;;

esac

case "$1" in

ADD)
     /bin/sed -i -e "/$HOST/d" $HOSTS_FILE
     /bin/echo $HOST >> $HOSTS_FILE
     ;;

REMOVE)
     /bin/sed -i -e "/$HOST/d" $HOSTS_FILE
     ;;

*)
   /bin/echo "Error - incorrect usage"
   /bin/echo "$0 [ADD/REMOVE] [ANGUS/LAMBO/RIBEYE/FIGJAM-MAIL]"
   exit 1
   ;;

esac

exit 0

