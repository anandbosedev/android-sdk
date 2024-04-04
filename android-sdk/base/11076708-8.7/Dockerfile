FROM debian:12.5-slim

RUN apt update && \
apt full-upgrade -y && \
apt install -y openjdk-17-jdk curl tar zip unzip zstd

RUN mkdir -p /opt/android && \
curl 'https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip' -o /tmp/commandlinetools.zip && \
unzip /tmp/commandlinetools.zip -d /opt/android && \
rm /tmp/commandlinetools.zip

RUN mv /opt/android/cmdline-tools /opt/android/latest && \
mkdir /opt/android/cmdline-tools && \
mv /opt/android/latest /opt/android/cmdline-tools/

ENV ANDROID_SDK_ROOT=/opt/android

RUN curl --location --show-error --url 'https://services.gradle.org/distributions/gradle-8.7-bin.zip' -o /tmp/gradle.zip && \
unzip /tmp/gradle.zip -d /opt && \
rm /tmp/gradle.zip && \
mv /opt/gradle-8.7 /opt/gradle

ENV GRADLE_HOME=/opt/gradle

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'emulator' \
'platform-tools'

ENV PATH="${PATH}:${GRADLE_HOME}/bin:${ANDROID_SDK_ROOT}/cmdline-tools/latest/bin:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/emulator"