FROM debian:12.5-slim

RUN apt update && \
apt full-upgrade -y && \
apt install --no-install-recommends -y openjdk-17-jdk curl tar zip unzip zstd gpg

RUN mkdir -p /opt/android && \
curl 'https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip' -o /tmp/commandlinetools.zip && \
unzip /tmp/commandlinetools.zip -d /opt/android && \
rm /tmp/commandlinetools.zip

RUN mv /opt/android/cmdline-tools /opt/android/latest && \
mkdir /opt/android/cmdline-tools && \
mv /opt/android/latest /opt/android/cmdline-tools/

ENV ANDROID_SDK_ROOT=/opt/android

RUN curl --location --show-error --url 'https://services.gradle.org/distributions/gradle-8.8-bin.zip' -o /tmp/gradle.zip && \
unzip /tmp/gradle.zip -d /opt && \
rm /tmp/gradle.zip && \
mv /opt/gradle-8.8 /opt/gradle

ENV GRADLE_HOME=/opt/gradle

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'emulator' \
'platform-tools' \
'cmdline-tools;latest'

RUN rm -rf /opt/android/cmdline-tools/latest && mv /opt/android/cmdline-tools/latest-2 /opt/android/cmdline-tools/latest

ENV PATH="${PATH}:${GRADLE_HOME}/bin:${ANDROID_SDK_ROOT}/cmdline-tools/latest/bin:${ANDROID_SDK_ROOT}/platform-tools:${ANDROID_SDK_ROOT}/emulator"