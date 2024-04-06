#!/bin/bash

str="begin "
diamond="<r1>"
box="[r1]"
n=20
fin_n=120
g=1
h=1
x=80 
#Execution times
pk=0.5
#the probability of necessity
pb=1-$pl
#the probability of possibility
while [ $n -le $fin_n ]
do
file=result$n
m=0
fin=0
let m=$n*2
let fin=$n*12
echo "">$file
#每个m执行的次数
while [ $m -le $fin ]
#m的值由2~fin之间递增
do
echo "${m}========================================================================================">>$file
k_m=$(($m/10))
k_m_j=${k_m%.*}
k_m_i=$(($k_m_j*5))
b_m=$(($k_m_j*2))
p_m=$(($m-$k_m_i-$b_m))
echo "${p_m}================================${b_m}========================================================="
freq=0
#执行次数
	while [ $freq -lt $x ]
	do
	str=" "
	num=0
	num1=0
	num2=0
	echo "begin">f2
	while [ $num -lt $k_m_i ]	
	do
	str="${str} ("
	i=0
	count0=$(($RANDOM % $n))
	count1=$(($RANDOM % $n))
	#atom1
	count2=$(($RANDOM % $n))
	#atom2
	count3=$(($RANDOM % $n))
	#atom3
	count4=$(($RANDOM % $n))
	#atom4
	count5=$(($RANDOM % $n))
	#atom5
	count6=$(($RANDOM % $n))
	#atom6
	random2=$(($RANDOM % 2))
	numbers=()
	while [[ ${#numbers[@]} -lt 4 ]]; do
  	new_number=$((RANDOM % $n))
  	if [[ ! " ${numbers[@]} " =~ " $new_number " ]]; then
    	numbers+=($new_number)
  	fi
	done
	if [ $random2 -eq 0 ]
	then
		str="${str}~"
	fi
	str="${str}p${numbers[0]} | "
	random2=$(($RANDOM % 2))
	if [ $random2 -eq 0 ]
	then
		str="${str}~"
	fi
	str="${str}p${numbers[1]} | "
	str="${str}${box}"
	str_dis="("
	random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	if [ $random2 -eq 0 ]
	then
		str_dis="${str_dis}~"
	fi
	str_dis="${str_dis}p${numbers[2]} |"
	random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	if [ $random2 -eq 0 ]
	then
		str_dis="${str_dis}~"
	fi
	str_dis="${str_dis}p${numbers[3]}"	
	#random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	#if [ $random2 -eq 0 ]
	#then
	#	str_dis="${str_dis}~"
	#fi
	#str_dis="${str_dis}p${count3}"
	str_dis="${str_dis})"
	str="${str}${str_dis}"
	str="${str}) & "
	let num=$num+1
	done
	
	
	while [ $num1 -lt $b_m ]	
	do
	str="${str} ("
	i=0
	count0=$(($RANDOM % $n))
	count1=$(($RANDOM % $n))
	#atom1
	count2=$(($RANDOM % $n))
	#atom2
	count3=$(($RANDOM % $n))
	#atom3
	count4=$(($RANDOM % $n))
	#atom4
	count5=$(($RANDOM % $n))
	#atom5
	count6=$(($RANDOM % $n))
	#atom6
	random2=$(($RANDOM % 2))
	numbers=()
	while [[ ${#numbers[@]} -lt 4 ]]; do
  	new_number=$((RANDOM % $n))
  	if [[ ! " ${numbers[@]} " =~ " $new_number " ]]; then
    	numbers+=($new_number)
  	fi
	done
	if [ $random2 -eq 0 ]
	then
		str="${str}~"
	fi
	str="${str}p${numbers[0]} | "
	random2=$(($RANDOM % 2))
	if [ $random2 -eq 0 ]
	then
		str="${str}~"
	fi
	str="${str}p${numbers[1]} | "
	str="${str}${diamond}"
	str_dis="("	
	random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	if [ $random2 -eq 0 ]
	then
		str_dis="${str_dis}~"
	fi
	str_dis="${str_dis}p${numbers[2]} &"
	random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	if [ $random2 -eq 0 ]
	then
		str_dis="${str_dis}~"
	fi
	str_dis="${str_dis}p${numbers[3]}"
	#random2=$(($RANDOM % 2))
	#0 is neg 1 is not
	#if [ $random2 -eq 0 ]
	#then
	#	str_dis="${str_dis}~"
	#fi
	#str_dis="${str_dis}p${count3}"
	str_dis="${str_dis})"
	str="${str}${str_dis})"
	let num1=$num1+1
	str="${str} & "
	done
	
	while [ $num2 -lt $p_m ]        
        do
        str="${str} ("
        i=0
        count0=$(($RANDOM % $n))
        count1=$(($RANDOM % $n))
        #atom1
        count2=$(($RANDOM % $n))
        #atom2
        count3=$(($RANDOM % $n))
        #atom3
        count4=$(($RANDOM % $n))
        #atom4
        count5=$(($RANDOM % $n))
        #atom5
        count6=$(($RANDOM % $n))
        #atom6
        random2=$(($RANDOM % 2))
        numbers=()
        while [[ ${#numbers[@]} -lt 4 ]]; do
        new_number=$((RANDOM % $n))
        if [[ ! " ${numbers[@]} " =~ " $new_number " ]]; then
        numbers+=($new_number)
        fi
        done
        if [ $random2 -eq 0 ]
        then
                str="${str}~"
        fi
        str="${str}p${numbers[0]} | "
        random2=$(($RANDOM % 2))
        if [ $random2 -eq 0 ]
        then
                str="${str}~"
        fi
        str="${str}p${numbers[1]} | "
        str_dis="(" 
        random2=$(($RANDOM % 2))	
	 #0 is neg 1 is not
        if [ $random2 -eq 0 ]
        then
                str_dis="${str_dis}~"
        fi
        str_dis="${str_dis}p${numbers[2]}"
        #random2=$(($RANDOM % 2))
        #0 is neg 1 is not
        #if [ $random2 -eq 0 ]
        #then
        #       str_dis="${str_dis}~"
        #fi
        #str_dis="${str_dis}p${count2} & "
        #random2=$(($RANDOM % 2))
        #0 is neg 1 is not
        #if [ $random2 -eq 0 ]
        #then
        #       str_dis="${str_dis}~"
        #fi
        #str_dis="${str_dis}p${count3}"
        str_dis="${str_dis})"
        str="${str}${str_dis})"
        let num2=$num2+1
        if [ $num2 -ne $p_m ]
        then
        str="${str} & "
        fi
        done

echo $str >>f2
echo " end" >>f2
./S52SAT f2 -diamondDegree -chaching -info|sed -n "/Solving/, /ABLE/p" >>$file
let freq=$freq+1
echo $g>>log
let g=$g+1
done
echo "${m}===================================================================">>log
let m=$m+10
done
let n=$n+10*$h
let h=$h+1
done

