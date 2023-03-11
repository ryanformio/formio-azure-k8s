#!/bin/bash
set -e

read -p 'Enter SOURCE_PATH: ' SOURCE_PATH
read -p 'Enter DEST_PATH: ' DEST_PATH
echo ""

tar -xf $SOURCE_PATH -C $DEST_PATH