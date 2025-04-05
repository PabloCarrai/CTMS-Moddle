#!/bin/bash


dock=$(which docker)
cnt=$($dock ps -aqf "name=md-moodle-*") 
f=$(which find)
trab=$($f . -type f -name reemplaza.sh -print -quit)
 

$dock exec -i $cnt /bin/bash < $trab 


