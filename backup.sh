#!/bin/bash
now=$(date +%d%m%Y-%M:%S)
dirname=$1
backupdirname=$1-$now

tar -czf ~/backups/$backupdirname.tar.gz ~/$dirname
