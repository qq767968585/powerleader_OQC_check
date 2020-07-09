#!/bin/bash
sh command.sh > ./test1.txt 2>&1
diff -y --suppress-common-lines ./test0.txt ./test1.txt > ./diff.txt 2>&1
cat diff.txt

#diff -y /home/guest/Desktop/1.txt /home/guest/Desktop/2.txt > /home/guest/Desktop/3.txt
