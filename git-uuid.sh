#!/bin/bash

git log --oneline -1 | cut -f 1 -d ' '
