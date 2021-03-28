#!/bin/bash
file1=$1
numb=$2
numl=$3
File2=$4
inum=$5
numx=$numb
numlast=$numl
if [ -f $file1 ] && [ -f $File2 ]
then
while [ $numx -le $numlast ]
do
  sed -n "${numx}p" $file1 | sed -i "$inum r  /dev/stdin" $File2
  ((numx++))
  ((inum++))
done
else
echo "File Does Not Exist"
fi
