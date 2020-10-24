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

# valid target repository user or organization ID
DOCKER_OR_ORG_ID=ptitzler

# existing Docker image name
IMG_NAME=xai
# existing Docker image tag
IMG_TAG=latest

# ------- no changes below this line -----------

# obtain Docker image id
IMG_ID=$(docker images "${IMG_NAME}" | grep "${IMG_NAME}" | grep "$IMG_TAG" | awk '{ print $3 }')

# tag Docker image using the provided information
docker tag $IMG_ID ${DOCKER_OR_ORG_ID}/${IMG_NAME}:${IMG_TAG}

# push Docker image to repository
docker push ${DOCKER_OR_ORG_ID}/${IMG_NAME}:${IMG_TAG}
