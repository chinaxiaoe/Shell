#!/bin/bash
#Author:xiaoe
#Date:2013-12-23
#Email:11807035@qq.com

host_slave=114.114.114.114
src=/web/baidu.com
dst=baidu.com
user=rsync_backup

inotifywait -mrq --timefmt '%Y-%m-%d %H:%M' --format '%T %w%f' -e close_write,delete,create,attrib $src \
| while read file
do
	cd $src && rsync -arHuz --delete '-e ssh -p 11411' ./ $user@$host_slave:/web/$dst > /dev/null 2>&1
done
exit 0
