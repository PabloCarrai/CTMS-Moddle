#!/bin/bash
var1='post_max_size = 1000M'
var2='post_max_size = 4M'
var3='upload_max_filesize = 1000M'
var4='upload_max_filesize = 4M'
sed -i "s&$var1&$var2&g" /opt/bitnami/php/etc/php.ini 
sed -i "s&$var3&$var4&g" /opt/bitnami/php/etc/php.ini 
/opt/bitnami/scripts/apache/reload.sh
