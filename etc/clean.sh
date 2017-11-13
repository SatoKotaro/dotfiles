#!/bin/bash

cat ./dotList.txt | while read line
  do
    rm $HOME/$line
  done
