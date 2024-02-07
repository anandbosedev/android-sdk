# Android SDK container images for CI
This repository provides images of Android SDK with Debian 12.4 base and set of pre-installed tools for setting up CI/CD for Android projects. Currently, the container images are publicly hosted in:

* Docker Hub [hub.docker.com/r/anandbose16/android-sdk](https://hub.docker.com/r/anandbose16/android-sdk)
* GitHub Container Registry [ghcr.io/anandbosedev/android-sdk](https://github.com/anandbosedev/android-sdk/pkgs/container/android-sdk)

## Base image configuration

Every SDK image is generated with a base image [android-sdk:base-latest](./android-sdk/base/11076708-8.6/Dockerfile). The base image contains the following components, which are common for all derived SDK images.

| Component | Version |
| ---- | ---- |
| OpenJDK | 17 |
| Gradle | 8.6 |
| Android SDK Command line tools | 11076708 |
| emulator | latest |
| platform-tools | latest |

## Tags

* [`android-sdk:34.0.0 android-sdk:34 android-sdk:latest`](./android-sdk/34.0.0/Dockerfile)
* [`android-sdk:33.0.3 android-sdk:33`](./android-sdk/33.0.3/Dockerfile)
* [`android-sdk:32.0.0 android-sdk:32`](./android-sdk/32.0.0/Dockerfile)
* [`android-sdk:31.0.0 android-sdk:31`](./android-sdk/31.0.0/Dockerfile)
* [`android-sdk:30.0.3 android-sdk:30`](./android-sdk/30.0.3/Dockerfile)
* [`android-sdk:29.0.3 android-sdk:29`](./android-sdk/29.0.3/Dockerfile)
* [`android-sdk:28.0.3 android-sdk:28`](./android-sdk/28.0.3/Dockerfile)
* [`android-sdk:27.0.3 android-sdk:27`](./android-sdk/27.0.3/Dockerfile)
* [`android-sdk:26.0.3 android-sdk:26`](./android-sdk/26.0.3/Dockerfile)
* [`android-sdk:25.0.3 android-sdk:25`](./android-sdk/25.0.3/Dockerfile)
* [`android-sdk:24.0.3 android-sdk:24`](./android-sdk/24.0.3/Dockerfile)
* [`android-sdk:23.0.3 android-sdk:23`](./android-sdk/23.0.3/Dockerfile)
* [`android-sdk:22.0.1 android-sdk:22`](./android-sdk/22.0.1/Dockerfile)
