FROM debian:12.4-slim

WORKDIR /opt/android

RUN apt update && \
apt full-upgrade -y && \
apt install -y openjdk-17-jdk curl tar zip unzip

RUN curl 'https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip' -o commandlinetools.zip && \
unzip commandlinetools.zip && \
rm commandlinetools.zip

ENV ANDROID_SDK_ROOT=/opt/android

RUN mv cmdline-tools latest && \
mkdir cmdline-tools && \
mv latest cmdline-tools/

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;34.0.0' \
'platforms;android-34' \
'emulator' \
'platform-tools'

WORKDIR /opt

RUN curl --location --show-error --url 'https://services.gradle.org/distributions/gradle-8.5-all.zip' -o gradle.zip && \
unzip gradle.zip && \
rm gradle.zip

ENV PATH="${PATH}:/opt/android/platform-tools:/opt/android/cmdline-tools/latest/bin:/opt/android/emulator:/opt/gradle-8.5/bin"

WORKDIR /