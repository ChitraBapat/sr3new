#/bin/bash

declare -A assArray3
assArray3=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);
n=1
f=0
while [ $f -eq 0 ]
do
 r=$((RANDOM%6+1))
((assArray3[$r]++))
(( n++ ))
 if [ $n -eq 10 ];
 then
 break
 f=1
 fi

done
echo "${!assArray3[@]} occurs ${assArray3[@]} times"
for (( n=1; n<7; n++ ));
do
echo "$n occurs ${assArray3[$n]}"
done
