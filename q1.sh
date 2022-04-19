#!/bin/bash
read filename
sed '/^$/d' $filename | awk '!seen[$0]++'