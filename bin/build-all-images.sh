#!/bin/bash

# Script to build all CEDAR Docker images

if [ -z "$CEDAR_DOCKER_SRC_HOME" ]; then
    echo "Need to set CEDAR_DOCKER_SRC_HOME"
    exit 1
fi

export CEDAR_DOCKER_BUILD_HOME=${CEDAR_DOCKER_SRC_HOME}/cedar-docker-build

echo ${CEDAR_DOCKER_BUILD_HOME}

source ${CEDAR_DOCKER_BUILD_HOME}/bin/cedar-images-base.sh

build_image()
{
    echo "Building image" $1:${IMAGE_VERSION}
    docker build -t $1:${IMAGE_VERSION} .
    
}

build_all_images()
{
    echo "Releasing all CEDAR Docker images..."
    for i in "${CEDAR_DOCKER_IMAGES[@]}"
    do
        pushd ${CEDAR_DOCKER_BUILD_HOME}/$i
        build_image ${CEDAR_IMAGE_PREFIX}/$i
        popd
    done
}

build_all_images



