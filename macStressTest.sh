#!/bin/zsh

# Missed Lectures Media
#
# Mac Stress Test
# 
# macStressTest.sh
#
# Conducts a basic stress test on a system running macOS.
#
# 23 May 2021
# V0.1
# Zachary Kascak @zkascak

# Greet User
echo "\nMissed Lectures Media\n"
echo "Mac Stress Test"
echo "V 0.1\n\n"
echo "THIS TEST WILL TAKE 15 MINUTES TO COMPLETE\n\n"

# Start 15 minute yes test
echo "yes test starting:"
echo -n -e "0%.."

testCycle=90
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