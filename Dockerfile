FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    qt5-default \
    qtcreator \
    qt5-qmake \
    cmake \
    gdb \
    git \
    && apt-get clean

# Set up environment variables for Qt
ENV QT_QPA_PLATFORM=offscreen
