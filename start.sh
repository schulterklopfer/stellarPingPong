#!/usr/bin/env sh

if [ ! $1 ]; then
	echo "No poop receiver!"
	exit
fi

pong=0
while [ 1 -eq 1 ];
do
message="💩 PING 💩"
if [ $pong -eq 1 ]; then
	pong=0
	message="💩 PONG 💩"
else
	pong=1
fi
./sendLumens.sh $1 "$message"
sleep 1
done