#!/bin/bash
set -e

read -p 'Enter NAMESPACE: ' NAMESPACE
read -p 'Enter PATH_TO_CHART: ' PATH_TO_CHART
echo ""

### Set Environment Variables
set -a # automatically export all variables
source .env
set +a

cat .env
echo ""
echo ""

helm -n $NAMESPACE upgrade -i --debug --wait --atomic \
--set appEnv=$APP_ENV \
--set image.repository=$API_IMAGE \
--set pdf.repository=$PDF_IMAGE \
--set mongo=$MONGO \
--set licenseKey=$LICENSE_KEY \
--set port=$PORT \
--set debug=$DEBUG \
--set baseUrl=$BASE_URL \
--set portalEnabled=$PORTAL_ENABLED \
--set adminEmail=$ADMIN_EMAIL \
--set adminPass=$ADMIN_PASS \
--set dbSecret=$DB_SECRET \
--set jwtSecret=$JWT_SECRET \
--set pdfServer=$PDF_SERVER \
--set formioAzureContainer=$FORMIO_AZURE_CONTAINER \
--set forimoAzureConnectionString=$FORMIO_AZURE_CONNECTION_STRING \
--set formioS3Key=$FORMIO_S3_KEY \
--set formioS3Secret=$FORMIO_S3_SECRET \
--set formioS3Bucket=$FORMIO_S3_BUCKET \
--set formioS3Server=$FORMIO_S3_SERVER \
formio $PATH_TO_CHART

echo ""
echo ""

kubectl -n $NAMESPACE get all