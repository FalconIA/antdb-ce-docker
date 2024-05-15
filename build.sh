#!/bin/bash

export ANTDB_VERSION=7.2.0.openeuler20
export PKG_RELEASE=1

function docker-build() {
    EXEC_CMD="docker build"
    if which podman > /dev/null 2>&1 ;then
        EXEC_CMD="podman build"
    fi
    set -x
    $EXEC_CMD $@
    set +x
}

docker-build build -f Dockerfile.cn \
    --build-arg ANTDB_VERSION=${ANTDB_VERSION} \
    -t falconia/antdb-ce:${ANTDB_VERSION%.openeuler*}-openeuler22 .
