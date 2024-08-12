FROM ubuntu:20.04

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gdb \
    git \
    wget \
    && apt-get clean

# Install Qt
RUN apt-get update && apt-get install -y qt5-default qtcreator qt5-qmake qtbase5-dev-tools && apt-get clean

# Set up environment variables for Qt
ENV QT_QPA_PLATFORM=offscreen
