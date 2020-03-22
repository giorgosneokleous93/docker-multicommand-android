FROM ubuntu

LABEL maintainer="Giorgos Neokleous <giorgos.neokleous93@gmail.com>"

SHELL ["/bin/bash", "-c"]

ARG ANDROID_DIR=/opt/android
ARG DOWNLOAD_DIR="/download"
ARG CMD_DIR="cmdline-tools"
ARG ANDROID_CMD_TOOLS="commandlinetools-linux-6200805_latest.zip"
ARG BUILD_TOOLS="build-tools;29.0.2"
ARG ANDROID_VERSION="29"

RUN apt update 
# Dependencies needed for building docker
RUN apt-get install -y wget unzip openjdk-8-jdk 

RUN mkdir -p ${ANDROID_DIR}/${CMD_DIR}
RUN wget https://dl.google.com/android/repository/${ANDROID_CMD_TOOLS} -P ${DOWNLOAD_DIR}/ && \
    unzip -d ${ANDROID_DIR}/$CMD_DIR/ ${DOWNLOAD_DIR}/$ANDROID_CMD_TOOLS && \
    rm -rf ${DOWNLOAD_DIR}

ENV ANDROID_HOME=${ANDROID_DIR}
ENV ANDROID_SDK_ROOT=${ANDROID_HOME}

ARG TOOLS_DIR=${ANDROID_HOME}/${CMD_DIR}/tools/bin 

RUN yes Y | $TOOLS_DIR/sdkmanager \
    tools \
    platform-tools \
    ${BUILD_TOOLS} \
    "platforms;android-${ANDROID_VERSION}"

RUN yes Y | $TOOLS_DIR/sdkmanager --licenses

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]