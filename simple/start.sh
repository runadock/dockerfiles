#!/bin/sh

echo "RUNADOCK_ENV_1" $RUNADOCK_ENV_1
echo "RUNADOCK_ENV_2" $RUNADOCK_ENV_2
echo "RUNADOCK_ENV_3" $RUNADOCK_ENV_3
echo "RUNADOCK_ENV_4" $RUNADOCK_ENV_4

for i in 1 2 3 4 5 6 7 8 9 10
do
	echo "a stdout log entry"
	echo "a stderr log entry" >/dev/stderr
	sleep 5
done
