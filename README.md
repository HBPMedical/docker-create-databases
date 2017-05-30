[![CHUV](https://img.shields.io/badge/CHUV-LREN-AF4C64.svg)](https://www.unil.ch/lren/en/home.html) [![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/LREN-CHUV/docker-create-databases/blob/master/LICENSE) [![DockerHub](https://img.shields.io/badge/docker-hbpmip%2Fcreate-databases-008bb8.svg)](https://hub.docker.com/r/hbpmip/create-databases/) [![ImageVersion](https://images.microbadger.com/badges/version/hbpmip/create-databases.svg)](https://hub.docker.com/r/hbpmip/create-databases/tags "hbpmip/create-databases image tags") [![ImageLayers](https://images.microbadger.com/badges/image/hbpmip/create-databases.svg)](https://microbadger.com/#/images/hbpmip/create-databases "hbpmip/create-databases on microbadger") [![Codacy Badge](https://api.codacy.com/project/badge/Grade/TODO)](https://www.codacy.com/app/hbp-mip/docker-create-databases?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=LREN-CHUV/docker-create-databases&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/LREN-CHUV/docker-create-databases/tree/master.svg?style=svg)](https://circleci.com/gh/LREN-CHUV/docker-create-databases/tree/master)


# docker-create-databases

Create databases in a Postgres server.

Useful for testing with docker-compose.

## Install

This docker image is available as an automated build on [the docker registry hub](https://registry.hub.docker.com/u/hbpmip/create-databases/), so using it is as simple as running:


```console
$ docker run hbpmip/create-databases:0.0.1
```

## Usage

Run:
```console
$ docker run -i -t --rm -e DB_HOST=`hostname` -v `pwd`/sql:/create-databases/sql hbpmip/create-databases:0.0.1
```

where the environment variables are:

* DB_HOST: [required] database host.
* DB_PORT: database port.
* DB_ADMIN_USER: [required] database admin user.
* DB_ADMIN_PASSWORD: [required] database admin password.
* DB[i]: name of the database to create, where i is a value from 0 to 9.
* USER[i]: database user.
* PASSWORD[i]: database password.

## Build

Run: `./build.sh`

## Publish on Docker Hub

Run: `./publish.sh`

## License

### Docker packaging

(this project)

Copyright (C) 2010-2017 [LREN CHUV](https://www.unil.ch/lren/en/home.html)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Initial packaging done by suin <suinyeze@gmail.com>

### create-databases

Copyright (C) 2016-2017 [Boxfuse GmbH](https://boxfuse.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

## Trademark
create-databases is a registered trademark of [Boxfuse GmbH](https://boxfuse.com).
