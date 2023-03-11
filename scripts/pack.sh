#!/bin/bash
set -e

read -p 'Enter APP_VERSION: ' APP_VERSION
read -p 'Enter CHART_VERSION: ' CHART_VERSION
echo ""

if [ ! -d "./versions" ]; then
  mkdir "./versions"
  echo "Directory created"
else
  echo "Directory already exists"
fi

helm package ./deployment \
--destination='./versions' \
--app-version=$APP_VERSION \
--version=$CHART_VERSION