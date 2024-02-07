FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;28.0.3' \
'platforms;android-28'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/28.0.3"