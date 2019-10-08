#!/bin/sh
# The target URL for testing is set
export URL=http://localhost:82
# the response from the target host is recorded
http_response=$(curl -s -o response.txt -w "%{http_code}" $URL)
# If the host responds then test is successful, otherwise it fails.
if [ $http_response != "200" ]; then
    echo "Test Failed"
else
    echo "Server returned:"
    cat response.txt   
    echo "Test Passed!" 
fi
