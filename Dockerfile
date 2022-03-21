FROM java:8-jdk-alpine AS codeclimate

ENV JAVA_OPTS="-XX:+UseParNewGC -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10 -Xss4096k"
ENV GRADLE_VERSION=4.2.1
ENV GRADLE_HOME=/opt/gradle
ENV GRADLE_FOLDER=$GRADLE_HOME
ENV GRADLE_USER_HOME=$GRADLE_HOME
ENV PATH=$GRADLE_HOME/bin:$PATH

RUN adduser --uid 9000 --gecos "" --disabled-password app \
      && mkdir -p $GRADLE_USER_HOME \
      && chown -R app:app $GRADLE_USER_HOME \
      && chmod g+s $GRADLE_USER_HOME \
      && apk --no-cache add --virtual build-deps \
      ca-certificates \
      wget \
      && update-ca-certificates \
      && wget https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
      && unzip gradle-${GRADLE_VERSION}-bin.zip -d /opt \
      && mv /opt/gradle-${GRADLE_VERSION}/* $GRADLE_HOME \
      && rm -f gradle-${GRADLE_VERSION}-bin.zip \
      && apk del build-deps

WORKDIR /usr/src/app

COPY local/codeclimate-sonar /usr/local/bin/codeclimate-sonar
COPY local/build.gradle ./
COPY local/engine.json ./engine.json

RUN gradle infra \
      && gradle clean build -x test \
      && apk --no-cache add --virtual version-deps \
      jq \
      && VERSION="$(echo '0.0.1')" \
      && jq --arg version "$VERSION" '.version = $version' > /engine.json < ./engine.json \
      && rm ./engine.json \
      && apk del version-deps \
      && chown -Rf app:app .

# TODO: Figure out how to properly populate VERSION above

USER app

VOLUME /code
WORKDIR /code

CMD ["codeclimate-sonar", "/code", "/config.json"]

ARG BUILD_DATE
ARG REVISION
ARG VERSION

LABEL maintainer="Megabyte Labs <help@megabyte.space>"
LABEL org.opencontainers.image.authors="Brian Zalewski <brian@megabyte.space>"
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.description="A slim Python CodeClimate engine for GitLab CI"
LABEL org.opencontainers.image.documentation="https://github.com/ProfessorManhattan/codeclimate-sonar-python/blob/master/README.md"
LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source="https://gitlab.com/megabyte-labs/docker/codeclimate/sonar-python.git"
LABEL org.opencontainers.image.url="https://megabyte.space"
LABEL org.opencontainers.image.vendor="Megabyte Labs"
LABEL org.opencontainers.image.version=$VERSION
LABEL space.megabyte.type="codeclimate"
