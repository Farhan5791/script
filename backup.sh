#!/bin/bash

<<info

this is backup script

src /root/script
dest /root/Backup

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip"  $src

