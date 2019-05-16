FROM willhallonline/ansible:2.7-alpine-3.9

RUN apk add --update --no-cache py-psycopg2

COPY docker/hosts /etc/ansible/hosts
COPY docker/run.sh docker/playbook.yml /

RUN chmod +x /run.sh
WORKDIR /
ENTRYPOINT ["/run.sh"]
CMD [""]
