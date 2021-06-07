#!/bin/zsh

# Missed Lectures Media
#
# Mac Stress Test
# 
# macStressTest.sh
#
# Conducts a basic stress test on a system running macOS.
#
# 2 June 2021
# V0.2
# Zachary Kascak @zkascak

# Greet User
echo "\nMissed Lectures Media\n"
echo "Mac Stress Test"
echo "V 0.2\n\n"

# Get system information
echo "System Info:"
sysctl -n kern.hostname
cpu=$(sysctl -n machdep.cpu.brand_string)
physCores=$(sysctl -n machdep.cpu.core_count)
mem=$(sysctl -n hw.memsize)
memout=$(( $mem/1024/1024/1024 ))
echo "CPU:" $cpu
echo "Physical Cores:" $physCores
echo "RAM(GB):" $memout
echo "\n\nTHIS TEST WILL TAKE 15 MINUTES TO COMPLETE\n\n"

testCycle=90

# Start 15 minute yes test
echo "yes test starting:"
echo -n -e "0%.."

yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & sleep $testCycle

counter=1
while [ $counter -le 9 ]
do 
    echo -n -e $counter"0%.."
    ((counter++))
    sleep $testCycle
done

killall yes

echo -n -e "100%\nComplete\n"