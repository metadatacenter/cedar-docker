FROM metadatacenter/cedar-microservice:2.6.0

ENV CEDAR_SERVER_NAME=submission

ENV CEDAR_SUBMISSION_HTTP_PORT=9010
ENV CEDAR_SUBMISSION_ADMIN_PORT=9110
ENV CEDAR_SUBMISSION_STOP_PORT=9210

ENV LOGDIR=${CEDAR_HOME}/log/cedar-${CEDAR_SERVER_NAME}-server/
RUN mkdir -p ${LOGDIR}
VOLUME ${LOGDIR}

RUN yum install -y python-redis

ADD scripts/pre-docker-entrypoint.sh ${CEDAR_HOME}/

EXPOSE ${CEDAR_SUBMISSION_HTTP_PORT} ${CEDAR_SUBMISSION_ADMIN_PORT} ${CEDAR_SUBMISSION_STOP_PORT}

RUN ${CEDAR_HOME}/install_deps.sh
