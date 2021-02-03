#!/bin/bash
username=%1
id=%2

echo "-- Test API GET Hello World --"
res=$(curl -s -H "Accept: application/json" -H "x-ibm-client-id: $id" -X GET https://gwidgdev.is.damart.fr/damart/integration/hello-world/hello?name=$username --insecure)
echo "-- Test start --"
echo "-- Show response of GET session --"
echo "response of test : $res"
if [ "$res" ] 
then
 echo "Test GET Hello World finished : SUCCESS"
else
 echo "Test GET Hello World finished : FAILED"
 exit 1
fi