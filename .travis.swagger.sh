#!/bin/bash

REPO="hawkular/hawkular.github.io"
BRANCH="swagger"
DOC_PATH="src/main/jbake/content/docs/rest/"

mkdir -p $DOC_PATH
FILES=`curl -Ls https://api.github.com/repos/$REPO/contents/?ref=$BRANCH | grep "download_url.*adoc" | cut -d '"' -f4`
for file in $FILES; do
  wget -P $DOC_PATH $file
done

