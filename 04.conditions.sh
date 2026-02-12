#!/bin/bash

echo "enter num"
 read NUMBER

 if [ ($(NUMBER % 2) -eq 0) ]  ; then 
  echo "even"
 else
  echo "odd"