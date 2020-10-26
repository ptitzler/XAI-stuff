#!/bin/sh
#
# Copyright 2020 IBM Corp. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -x

if [[ -z "${IMG_NAME}" ]]; then
    if [ "$1" != "" ]; then
        IMG_NAME=$1
    else
        exit 1
    fi
fi

# target Docker image tag
# defaults to `latest`
IMG_TAG=${IMG_TAG:-latest}

# Dockerfile to be used for build
# defaults to `Dockerfile`
DOCKER_FILE=${DOCKER_FILE:-Dockerfile} 

# build Docker image
docker build -t ${IMG_NAME}:${IMG_TAG} -f ${DOCKER_FILE} .
