FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;34.0.0' \
'platforms;android-34'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/34.0.0"