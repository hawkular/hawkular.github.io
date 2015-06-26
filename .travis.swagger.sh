#!/bin/bash
#
# Copyright 2014-2015 Red Hat, Inc. and/or its affiliates
# and other contributors as indicated by the @author tags.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -x

addHeaders() {
  dir_path=$1

  for file in $(find $dir_path -maxdepth 1 -mindepth 1); do
    # if the documentation is empty, ignore it
    [ -s $file ] || {
      rm $file
      continue
    }

    # it assumes the filenames to be in "rest-${component}.adoc" form
    title=`echo $(basename $file) | cut -d'.' -f1 | cut -d'-' -f2`
    title="$(tr '[:lower:]' '[:upper:]' <<< ${title:0:1})${title:1} REST API"
    echo $title

    HEADER="= $title\n\
Travis CI\n\
`date "+%Y-%m-%d"`\n\
:description: Auto-generated swagger documentation\n\
:icons: font\n\
:jbake-type: page\n\
:jbake-status: published\n\
:toc: macro\n\
:toc-title:\n\
\n\
toc::[]\n\
"
    # add the header
    sed -i.bak "1s;^;$HEADER;" $file
  done
}

setHawkularReleasedVersion() {
  HAWKULAR_RELEASED_VERSION=`curl -Ls https://api.github.com/repos/hawkular/hawkular/releases | grep "tag_name" | head -1 | cut -d '"' -f4`
  #fallback mechanism, if github/internet/anything is down
  HAWKULAR_RELEASED_VERSION=`[[ "x$HAWKULAR_RELEASED_VERSION" == "x" ]] && echo x.y.z`
  JBAKE_PROPERTIES="src/main/jbake/jbake.properties"
  sed -i.bak "s;@HAWKULAR_RELEASED_VERSION@;$HAWKULAR_RELEASED_VERSION;" $JBAKE_PROPERTIES
  rm -f $JBAKE_PROPERTIES.bak
}

setHawkularReleasedDate() {
  HAWKULAR_RELEASED_DATE=`curl -Ls https://api.github.com/repos/hawkular/hawkular/releases | grep "published_at" | head -1 | cut -d '"' -f4`
  #HAWKULAR_RELEASED_DATE=`date -d $HAWKULAR_RELEASED_DATE +'%B %-m %Y'`
  #fallback mechanism, if github/internet/anything is down
  HAWKULAR_RELEASED_DATE=`[[ "x$HAWKULAR_RELEASED_DATE" == "x" ]] && echo x.y.z`
  sed -i.bak "s;@HAWKULAR_RELEASED_DATE@;$HAWKULAR_RELEASED_DATE;" $JBAKE_PROPERTIES
  rm -f $JBAKE_PROPERTIES.bak
}

setHawkularMasterVersion() {
  HAWKULAR_MASTER_VERSION=`curl -Ls https://raw.githubusercontent.com/hawkular/hawkular/master/pom.xml | grep "^  <version>" | sed -e "s;  <version>\([0-9a-zA-Z\.\-]*\)</version>;\1;"`
  #fallback mechanism, if github/internet/anything is down
  HAWKULAR_MASTER_VERSION=`[[ "x$HAWKULAR_MASTER_VERSION" == "x" ]] && echo x.y.z-SNAPSHOT`
  sed -i.bak "s;@HAWKULAR_MASTER_VERSION@;$HAWKULAR_MASTER_VERSION;" $JBAKE_PROPERTIES
  rm -f $JBAKE_PROPERTIES.bak
}


downloadAndProcess() {
  REPO="hawkular/hawkular.github.io"
  BRANCH="swagger"
  DOC_PATH="src/main/jbake/content/docs/rest/"

  mkdir -p $DOC_PATH
  FILES=`curl -Ls https://api.github.com/repos/$REPO/contents/?ref=$BRANCH | grep "download_url.*adoc" | cut -d '"' -f4`

  # travis has sometimes issue with the call above, so make sure it's not empty
  [[ "x" == "x$FILES" ]] && FILES="https://raw.githubusercontent.com/hawkular/hawkular.github.io/swagger/rest-alerts.adoc \
https://raw.githubusercontent.com/hawkular/hawkular.github.io/swagger/rest-btm.adoc \
https://raw.githubusercontent.com/hawkular/hawkular.github.io/swagger/rest-inventory.adoc \
https://raw.githubusercontent.com/hawkular/hawkular.github.io/swagger/rest-metrics.adoc"

  for file in $FILES; do
    wget -P $DOC_PATH $file
  done
  addHeaders $DOC_PATH
  rm -f $DOC_PATH/*.bak
}

main() {
  setHawkularReleasedVersion
  setHawkularReleasedDate
  setHawkularMasterVersion
  downloadAndProcess
}

main
