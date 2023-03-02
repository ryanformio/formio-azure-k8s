#!/bin/bash

read -p 'Enter SOURCE_PATH: ' SOURCE_PATH
read -p 'Enter DEST_PATH: ' DEST_PATH

tar -xf $SOURCE_PATH -C $DEST_PATH