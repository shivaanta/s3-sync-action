# FROM python:3.8-alpine

FROM amazon/aws-cli:2.7.35

LABEL "com.github.actions.name"="S3 Sync"
LABEL "com.github.actions.description"="Sync a directory to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.1"
LABEL repository="https://github.com/shivaanta/s3-sync-action"
LABEL homepage="https://shivaanta.com/"
LABEL maintainer="Anil Kumar Patel"


ADD entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
