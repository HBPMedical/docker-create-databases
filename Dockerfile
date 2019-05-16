FROM willhallonline/ansible:2.7-alpine-3.9

RUN apk add --update --no-cache py-psycopg2

COPY docker/hosts /etc/ansible/hosts
COPY docker/run.sh docker/playbook.yml /

RUN chmod +x /run.sh
WORKDIR /
ENTRYPOINT ["/run.sh"]
CMD [""]

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="hbpmip/create-databases" \
      org.label-schema.description="Creates databases in Postgres" \
      org.label-schema.url="https://github.com/LREN-CHUV/docker-create-databases" \
      org.label-schema.vcs-type="git" \
      org.label-schema.vcs-url="https://github.com/LREN-CHUV/docker-create-databases.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version="$VERSION" \
      org.label-schema.vendor="LREN CHUV" \
      org.label-schema.license="Apache2.0" \
      org.label-schema.docker.dockerfile="Dockerfile" \
      org.label-schema.schema-version="1.0"
