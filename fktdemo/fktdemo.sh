#!/bin/sh


addone(){
echo $1 ist der eingegebene Wert
nmbr=$(($1 + 1))
return $nmbr
}

addone $2 
echo $? ist dein neuer Wert
