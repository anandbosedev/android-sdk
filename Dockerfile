FROM debian:12.4-slim

RUN apt update && \
apt full-upgrade -y && \
apt install -y openjdk-17-jdk curl tar zip unzip

RUN mkdir -p /opt/android && \
curl 'https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip' -o /tmp/commandlinetools.zip && \
unzip /tmp/commandlinetools.zip -d /opt/android && \
rm /tmp/commandlinetools.zip

RUN mv /opt/android/cmdline-tools /opt/android/latest && \
mkdir /opt/android/cmdline-tools && \
mv /opt/android/latest /opt/android/cmdline-tools/

ENV ANDROID_SDK_ROOT=/opt/android

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;34.0.0' \
'platforms;android-34' \
'emulator' \
'platform-tools'

RUN curl --location --show-error --url 'https://services.gradle.org/distributions/gradle-8.6-bin.zip' -o /tmp/gradle.zip && \
unzip /tmp/gradle.zip -d /opt && \
rm /tmp/gradle.zip && \
mv /opt/gradle-8.6 /opt/gradle

ENV GRADLE_HOME=/opt/gradle PATH="${PATH}:/opt/android/platform-tools:/opt/android/cmdline-tools/latest/bin:/opt/android/emulator:/opt/gradle/bin"

WORKDIR /