FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;29.0.3' \
'platforms;android-29'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/29.0.3"