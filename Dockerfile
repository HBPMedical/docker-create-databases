FROM ju2wheels/ansible:2.x-alpine-3.5

RUN apk add --update --no-cache py-psycopg2

COPY docker/run.sh docker/playbook.yml /

ENTRYPOINT ['/run.sh']
