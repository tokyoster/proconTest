#!/bin/sh
#echo $1
g++ $1 -o a.out
./a.out < $1.in > $1.result.out
ruby testresult.rb $1.out $1.result.out
