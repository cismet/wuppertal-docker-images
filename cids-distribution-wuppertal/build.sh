#!/bin/bash

# add --squash build flag available to remove .private data from image history
# See https://github.com/docker/docker/pull/22641#issuecomment-266156133

# brute force invalidate complete cache
#docker build -t cismet/cids-distribution-wuppertal:latest --no-cache=true .

# set build timestamp to selectively invalidate cache after dockerfile instruction
# RELEASE BUILD
#docker build -t cismet/cids-distribution-wuppertal:latest -t wuppertal/cids-distribution-wuppertal:5.0 --build-arg expire_after=$(date +%Y-%m-%d:%H:%M:%S) .

# DEV BUILD
docker build -t cismet/cids-distribution-wuppertal:5.0-SNAPSHOT -t wuppertal/cids-distribution-wuppertal:latest-snapshot --build-arg expire_after=$(date +%Y-%m-%d:%H:%M:%S) .