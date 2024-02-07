FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;32.0.0' \
'platforms;android-32'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/32.0.0"