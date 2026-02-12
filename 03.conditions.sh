#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ] ; then
  echo "given ni lesssthen 10"
elif [ $NUMBER -eq 10 ] ; then
   echo  "given no equl to 10"
else 
   echo "given no grater than 10"
fi