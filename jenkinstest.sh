#!/bin/sh

APPSITE=https://jenkins-push.cap.suselinux.info
TESTSTRING=ProdReady

echo "-----------------------------------------------"
echo "START TESTS"
echo "looking for string $TESTSTRING at $APPSITE"

curl -ks  $APPSITE|grep $TESTSTRING 
EXITCODE=$?
echo "$EXITCODE"

if [ $EXITCODE -eq 0 ]
then
	echo "Hurray, test passed"
else
	echo "Ohh no, test failed. Build failed"
fi

echo "-----------------------------------------------"
exit $EXITCODE
