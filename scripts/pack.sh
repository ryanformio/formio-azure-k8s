#!/bin/bash

read -p 'Enter APP_VERSION: ' APP_VERSION
read -p 'Enter CHART_VERSION: ' CHART_VERSION
echo ""

helm package ./deployment \
--destination='./versions' \
--app-version=$APP_VERSION \
--version=$CHART_VERSION