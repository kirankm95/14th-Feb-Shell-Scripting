#!/bin/bash

VAR1=("Kiran" "Ramaya" "Chinni")

echo "first array value is: ${VAR1[0]}"
echo "second array value is: ${VAR1[1]}"
echo "thrid array value is: ${VAR1[2]}"
echo "all array value is: ${VAR1[@]}"
echo "count array value is: ${VAR1["#"]}"
echo "* array value is: ${VAR1[*]}"
echo "last N array value is: ${VAR1[N]}"