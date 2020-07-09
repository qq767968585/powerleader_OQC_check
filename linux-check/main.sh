#!/bin/bash
echo "Last number:$(cat ./tmp.txt)"
read -p 'Input this order number(without "MO"):' input_numb
if [ $input_numb ];then
echo $input_numb > ./tmp.txt
else
input_numb=$(cat ./tmp.txt)
fi
echo "This number:$input_numb"
if [ ! -d "./standard/$input_numb" ];then
mkdir ./standard/$input_numb
fi

sn_start=$(dmidecode -t1|grep Serial)
sn=${sn_start##*'Number: '}
#str=${sn_start#*'Number: '*' '}
#sn=${str#'Number: '}
dmidecode -t3|grep Serial >> sn.txt
dmidecode -t1|grep Serial >> sn.txt

if [ `ls ./standard/$input_numb/|wc -l` = '0' ];then
sh command.sh > ./standard/$input_numb/$sn.txt 2>&1
rm -f ./diff_out.txt
\cp -rf ./standard/$input_numb/$sn.txt ./diff_out.txt
else
stad_file=$(ls -lt ./standard/$input_numb/ |grep txt|head -n 1|awk '{print $9}')
sh command.sh > ./standard/$input_numb/$sn.txt 2>&1
#cp ./standard/$input_numb/$sn.txt ./diff_out.txt
rm -f ./diff_out.txt
diff -y --suppress-common-lines ./standard/$input_numb/$stad_file ./standard/$input_numb/$sn.txt > ./diff_out.txt
rm -f ./diff_out_all.txt
diff -y ./standard/$input_numb/$stad_file ./standard/$input_numb/$sn.txt > ./diff_out_all.txt
fi
cat ./diff_out.txt

read -p "pass (y or n?):" tag
if [ $tag = "n" ];then
mv ./standard/$input_numb/$sn.txt ./nopass/
echo "$sn is nopass"
else
echo "$sn is pass"
fi

history -c

##cat ./diff_out.txt
#out_val=$(cat ./diff_out.txt)
###echo ${out_val}
#echo -e "\e[1;31m${out_val}\e[0m"

#cat ./diff_out_all.txt



