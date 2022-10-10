#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

gh secret set CLOUD_RUN_PROJECT --body ${CLOUD_RUN_PROJECT}
gh secret set CLOUD_RUN_SERVICE_NAME --body ${CLOUD_RUN_SERVICE_NAME}
gh secret set CLOUD_RUN_REGION --body ${CLOUD_RUN_REGION}
gh secret set GCP_SERVICE_ACCOUNT_CREDENTIALS < ${CREDENTIALS_PATH}

exit 0
