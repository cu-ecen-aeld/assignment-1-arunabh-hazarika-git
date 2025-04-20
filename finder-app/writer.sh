#!/bin/bash

if [ $# -lt 2 ] ; then
    echo "Usage: writer.sh <outfile> <text-to-write>"
    exit 1
fi

filepath=$(dirname "$1")
if [ $? -ne 0 ] ; then
    echo "Failed to parse file path"
    exit 1;
fi
mkdir -p "$filepath"
if [ $? -ne 0 ] ; then
    echo "Failed to create directory"
    exit 1;
fi


echo "$2" > "$1"
if [ $? -ne 0 ] ; then
    echo "Failed to create/write to outfile"
    exit 1
fi

