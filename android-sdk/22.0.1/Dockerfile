FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;22.0.1' \
'platforms;android-22'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/22.0.1"