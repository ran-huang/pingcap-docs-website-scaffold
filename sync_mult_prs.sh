#!/bin/bash
set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "$SCRIPT_DIR"

./sync.sh preview/pingcap/docs/15674
./sync.sh preview/pingcap/docs-cn/15672
rsync -av markdown-pages/zh/tidb/master/ markdown-pages/zh/tidb/release-7.1/
rsync -av markdown-pages/en/tidb/master/ markdown-pages/en/tidb/release-7.1/

git add .
git commit -m "update {release-x.y}" || echo "No changes to commit"
