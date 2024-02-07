# Android SDK container images for CI
This repository provides images of Android SDK with Debian 12.4 base and set of pre-installed tools for setting up CI/CD for Android projects.

## Base image configuration

Every SDK image is generated with a base image [anandbose16/android-sdk:base-latest](./android-sdk/base/11076708-8.6/Dockerfile). The base image contains the following components, which are common for all derived SDK images.

| Component | Version |
| ---- | ---- |
| OpenJDK | 17 |
| Gradle | 8.6 |
| Android SDK Command line tools | 11076708 |
| emulator | latest |
| platform-tools | latest |

## Tags

* [`anandbose16/android-sdk:34.0.0 anandbose16/android-sdk:34 anandbose16/android-sdk:latest`](./android-sdk/34.0.0/Dockerfile)
* [`anandbose16/android-sdk:33.0.3 anandbose16/android-sdk:33`](./android-sdk/33.0.3/Dockerfile)
* [`anandbose16/android-sdk:32.0.0 anandbose16/android-sdk:32`](./android-sdk/32.0.0/Dockerfile)
* [`anandbose16/android-sdk:31.0.0 anandbose16/android-sdk:31`](./android-sdk/31.0.0/Dockerfile)
* [`anandbose16/android-sdk:30.0.3 anandbose16/android-sdk:30`](./android-sdk/30.0.3/Dockerfile)
* [`anandbose16/android-sdk:29.0.3 anandbose16/android-sdk:29`](./android-sdk/29.0.3/Dockerfile)
* [`anandbose16/android-sdk:28.0.3 anandbose16/android-sdk:28`](./android-sdk/28.0.3/Dockerfile)
* [`anandbose16/android-sdk:27.0.3 anandbose16/android-sdk:27`](./android-sdk/27.0.3/Dockerfile)
* [`anandbose16/android-sdk:26.0.3 anandbose16/android-sdk:26`](./android-sdk/26.0.3/Dockerfile)
* [`anandbose16/android-sdk:25.0.3 anandbose16/android-sdk:25`](./android-sdk/25.0.3/Dockerfile)
* [`anandbose16/android-sdk:24.0.3 anandbose16/android-sdk:24`](./android-sdk/24.0.3/Dockerfile)
* [`anandbose16/android-sdk:23.0.3 anandbose16/android-sdk:23`](./android-sdk/23.0.3/Dockerfile)
* [`anandbose16/android-sdk:22.0.1 anandbose16/android-sdk:22`](./android-sdk/22.0.1/Dockerfile)
