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


getHawkularReleases() {
  RELEASES_PATH="src/main/jbake/assets/data/releases"
  mkdir $RELEASES_PATH
  wget --header="Authorization: token $DEPLOY_TOKEN" -O $RELEASES_PATH/hawkular-apm-releases.json https://api.github.com/repos/hawkular/hawkular-apm/releases
  wget --header="Authorization: token $DEPLOY_TOKEN" -O $RELEASES_PATH/hawkular-services-releases.json https://api.github.com/repos/hawkular/hawkular-services/releases
  wget --header="Authorization: token $DEPLOY_TOKEN" -O $RELEASES_PATH/hawkular-metrics-releases.json https://api.github.com/repos/hawkular/hawkular-metrics/releases
}

main() {
  getHawkularReleases
}

main
