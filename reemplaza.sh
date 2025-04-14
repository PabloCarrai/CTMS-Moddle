#!/bin/bash
var1='post_max_size = 40M'
var2='post_max_size = 2000M'
var3='upload_max_filesize = 40M'
var4='upload_max_filesize = 2000M'
sed -i "s&$var1&$var2&g" /opt/bitnami/php/etc/php.ini 
sed -i "s&$var3&$var4&g" /opt/bitnami/php/etc/php.ini 
/opt/bitnami/scripts/apache/reload.sh
