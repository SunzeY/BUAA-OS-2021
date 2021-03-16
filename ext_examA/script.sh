#!/bin/bash
a=`sed -n '8p' $1`
sed -n '8p' $1 |./programA >outputA
