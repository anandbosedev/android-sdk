FROM anandbose16/android-sdk:base-latest

RUN yes | /opt/android/cmdline-tools/latest/bin/sdkmanager --install \
'build-tools;24.0.3' \
'platforms;android-24'

ENV PATH="${PATH}:${ANDROID_SDK_ROOT}/build-tools/24.0.3"