FROM ju2wheels/ansible:2.x-alpine-3.5

MAINTAINER ludovic.claude54@googlemail.com

RUN apk add --update --no-cache py-psycopg2

COPY docker/hosts /etc/ansible/hosts
COPY docker/run.sh docker/playbook.yml /

RUN chmod +x /run.sh
WORKDIR /
ENTRYPOINT ["/run.sh"]
CMD [""]
