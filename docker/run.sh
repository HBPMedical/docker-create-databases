#!/usr/bin/env bash

dbs=""

for i in 0 1 2 3 4 5 6 7 8 9; do
  eval "db=\${DB$i}"
  eval "user=\${USER$i}"
  eval "password=\${PASSWORD$i}"

  if [[ -n "$db" && -n "$user" && -n "$password" ]] ; then
    if [ -z "$dbs" ]; then
      dbs="{\"db\":\"$db\",\"user\":\"$user\",\"password\":\"$password\"}"
    else
      dbs="$dbs,{\"db\":\"$db\",\"user\":\"$user\",\"password\":\"$password\"}"
    fi
  fi
done

ansible-playbook -e databases="[$dbs]" \
                -e db_host="$DB_HOST" \
                -e db_admin_user="$DB_ADMIN_USER" \
                -e db_admin_password="$DB_ADMIN_PASSWORD" \
                -e db_port="$DB_PORT" \
                playbook.yml
