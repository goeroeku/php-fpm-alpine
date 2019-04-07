#!/bin/bash
TAG=${1}
CONTAINER_NAME="ic_php_fpm_${TAG}"

if [[ ${TAG} == "" ]]
then
    echo "Please provide a tag.";
    exit 1;
fi

CMD="docker exec -it ${CONTAINER_NAME} ash";

echo ${CMD};

${CMD}