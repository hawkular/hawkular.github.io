#!/bin/bash
#
# Copyright 2015 Red Hat, Inc. and/or its affiliates
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

export BASE_PORT=10000

deployPr() {
  prNo=$1
  [[ $prNo =~ ^[0-9]+$ ]] ||  {
    echo -e "ouch, PR number must be a number"
    exit 1
  }
  _base="/tmp/pr$prNo"
  rm -Rf $_base &> /dev/null ; mkdir -p $_base && cd $_ &&\
  git clone --single-branch -b pages https://github.com/hawkular/hawkular.github.io &&\
  cd $_base/hawkular.github.io &&\
  git fetch origin refs/pull/$prNo/head:pr$prNo &&\
  git checkout pr$prNo && rm $_base/fake-input &> /dev/null
  mkfifo $_base/fake-input
  [[ -s $_base/pid ]] && kill -9 `cat /tmp/pr$prNo/pid`
  cat $_base/fake-input | mvn -Pinline -Djbake.port=`expr $prNo + $BASE_PORT` -Djbake.listenAddress=0.0.0.0 -Djbake.livereload=false &> /dev/null &
  PID=$!
  echo $PID > $_base/pid
  echo "kill -9 $PID" | at now + 96 hours
}

handleReq() {
  read token prNo
  #>&2 echo "pr = $prNo,token = $token"
  if [[ "$token" == $"$TOKEN" ]] && [[ "x$token" != "x" ]];
  then
    #echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n"
    #echo -e "<html><h1>hawkular</h1>"
    [[ "x$prNo" != "x" ]] && {
      #echo -e "deploying PR $prNo ..."
      #echo -e "<br>it'll be shortly available on port "`expr $prNo + $BASE_PORT`
      #echo -e "<br>the instance will be auto-killed after 3 days"
      deployPr $prNo
    }
    #echo -e "</html>"
  else
    #echo -e "HTTP/1.1 403 Forbidden\r\nContent-Type: text/html\r\n\r\n"
    #echo -e "<html><h1>wrong token</h1></html>"
  fi
}

typeset -fx handleReq
typeset -fx deployPr

echo "listening for requests on port $BASE_PORT.."
nc -k -lp $BASE_PORT -c handleReq
