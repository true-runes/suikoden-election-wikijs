#!/usr/bin/env bash
set -euxo pipefail
cd "$(dirname "$0")"

# GCP のプロジェクト名
gh secret set CLOUD_RUN_PROJECT --body ${CLOUD_RUN_PROJECT}

# Cloud Run のサービス名＆Artifact Registry のリポジトリ名の一部
# アンダースコアは使えない
gh secret set CLOUD_RUN_SERVICE_NAME --body ${CLOUD_RUN_SERVICE_NAME}

# asia-northeast1（東京）
gh secret set CLOUD_RUN_REGION --body ${CLOUD_RUN_REGION}

# サービスアカウントの認証用の JSON ファイルのパス
gh secret set GCP_SERVICE_ACCOUNT_CREDENTIALS < ${CREDENTIALS_PATH}

exit 0
