#!/bin/bash
trap "exit 1" TERM
export TOP_PID=$$
# Input validation

if [ "$#" -ne 5 ]; then
    echo "Usage: $0 <sap_sid> <sap_sid2> <sap_sid3>"
    exit 1
fi

SID=$(echo "${1}" | tr -d '[:lower:]')
test_mul=$(echo "${2}")
value=$(echo "${3}" | tr -d '[:lower:]')
test=$(echo "${4}" | tr -d '[:lower:]')
execute=$(echo "${5}" | tr -d '[:lower:]')

echo "$SID"
if [ "$test_mul" == "yes" ]; then
    echo "$value"
    echo "$test"
else
    echo "$execute"
fi
echo "very fast"
echo "script changes"
echo "Completed"
