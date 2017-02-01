#!/bin/bash

echo 'el'`cat /etc/system-release-cpe | /usr/bin/cut -f 5 -d ':' | /usr/bin/cut -f 1 -d '.'`
