#!/bin/sh

APPSITE=https://jenkinsapp-app3.cap.it-slav.net
TESTSTRING=ProdReady

echo "-----------------------------------------------"
echo "START TESTS"
echo "looking for string $TESTSTRING at $APPSITE"

curl -ks  $APPSITE|grep $TESTSTRING 
EXITCODE=$?
echo "$EXITCODE"

if [ "$EXITCODE" == "0" ]
then
	echo "Hurray, test passed"
else
	echo "Ohh no, test failed. Build failed"
fi

echo "-----------------------------------------------"
exit $EXITCODE
