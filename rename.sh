#! /bin/bash
if [[ -z "$1"  && -z "$2"  && -z "$3" ]]; then
	echo "Potrebno je uneti parametre $0 [putanja] [pronadji] [zameni] "
else	
	putanja="$1"
	pronadji="$2"
	promeni="$3"
	
	  find ${putanja} -type f -name "*${pronadji}*" | while read FILENAME ; do
	      NEW_FILENAME="$(echo ${FILENAME} | sed -e "s/${pronadji}/${promeni}/g")";
	      mv "${FILENAME}" "${NEW_FILENAME}";
#	      echo $FILENAME,$NEW_FILENAME
	      printf "$FILENAME,$NEW_FILENAME\n"
	  done
fi
