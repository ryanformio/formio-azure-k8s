# Form.io - Azure Kubernetes Documentation

## Steps
1. Create a helm package verison
```bash
bash scripts/pack.sh 
### Will be prompted for...
# Enter APP_VERSION: 7.4.2__3.4.0
# Enter CHART_VERSION: 1.0.3
```

2. Unpack the version
```bash
bash scripts/unpack.sh  
### Will be prompted for...
# Enter SOURCE_PATH: ./versions/formio-1.0.3.tgz
# Enter DEST_PATH: ./apps
```

3. Deploy the Chart
```bash
bash scripts/upgrade.sh 
### Will be prompted for...
# Enter NAMESPACE: formio-dev
# Enter PATH_TO_CHART: ./apps/formio
```