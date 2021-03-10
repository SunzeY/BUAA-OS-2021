#!/bin/bash
copy=$1
new=$2
i=8
>$new
while [ $i -lt 513 ]
do
sed -n "$i p" $copy >>$new
let i=$i*4
done
sed -n "1024p" $copy >>$new
