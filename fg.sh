#!/bin/bash

for i in `ls -l /web | awk '{print $9}' | sed '1d'`; do
	find /web/$i -type f -exec grep "[mnt]/swt/" {} \;|awk -F "href=\"" '{print $2}'|awk -F "\"" '{print $1}' >> /tmp/$i
done
