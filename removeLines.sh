#!/bin/bash

# Removing whole lines from a file, that match a search list using sed.
# The search list in this case is iplist.txt and the file that will be modified if there's a match is routerdb.
# Replace these with the locations to suit your files.V



while read -r line
do
    sed -i "/$line/d" router.db
	#sed -i "" "/$line/d" router.db		#Use this for Unix based systems (MacOS, FreeBSD etc). Comment out the other.
done < iplist.txt
