#!/bin/bash

s1="href=\"javascript:void\(0\)\" onclick=\"openZoosUrl\(\'chatwin\',\'&e=%25u5728%25u7EBF%25u54A8%25u8BE2\'\);return false;\""
s2="href=\"javascript:void\(0\)\" onclick=\"openZoosUrl\(\'chatwin\',\'&e=zxzx\'\);return false;\""
s3="href=\"javascript:void\(0\)\" onclick=\"openZoosUrl\(\'chatwin\',\'&e=kfzx\'\);return false;\""
ss="href=\"javascript:void\(swt\)\" onclick=\"openswt\(\)\""

for i in `ls -lah /web/ | grep "drwx" |awk '{print $9}'|sed '1,2d'`; do
        echo "您好，$i正在替换中..."
        perl -pi -e "s#$s1#$ss#g" `find $i \( -name *.js -o -name *.htm -o -name *.html \)`
        perl -pi -e "s#$s2#$ss#g" `find $i \( -name *.js -o -name *.htm -o -name *.html \)`
        perl -pi -e "s#$s3#$ss#g" `find $i \( -name *.js -o -name *.htm -o -name *.html \)`
        echo "恭喜，$i替换成功！"
done
