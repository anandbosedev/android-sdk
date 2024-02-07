FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;31.0.0' \
'platforms;android-31'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/31.0.0"