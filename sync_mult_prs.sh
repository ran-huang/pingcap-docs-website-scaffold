#!/bin/bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

./sync.sh preview/pingcap/docs/{PR_NUMBER_1}
./sync.sh preview/pingcap/docs/{PR_NUMBER_2}
./sync.sh preview/pingcap/docs-cn/{PR_NUMBER_3}
./sync.sh preview/pingcap/docs-cn/{PR_NUMBER_4}
rsync -av markdown-pages/zh/tidb/master/ markdown-pages/zh/tidb/{release-x.y}/
rsync -av markdown-pages/en/tidb/master/ markdown-pages/en/tidb/{release-x.y}/

git add .
git commit -m "update {release-x.y}" || echo "No changes to commit"
