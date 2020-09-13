FROM node:14.10.1-alpine3.11

RUN apk update; \
    npm install -g @vue/cli;

ENV APP_HOME /front
WORKDIR $APP_HOME
ADD [ \
        "docker/front/build.sh", \
        "docker/front/run.sh", \
        "front/package.json", \
        "front/yarn.lock", \
        "./" \
    ]

RUN yarn install; \
    mv node_modules /tmp; \
    mv build.sh /build.sh; \
    mv run.sh /run.sh;
