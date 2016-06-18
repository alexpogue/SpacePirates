FROM ubuntu:14.04
RUN apt-get update && apt-get install -y libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev git-all cmake g++
RUN git clone https://github.com/alexpogue/SpacePirates.git
WORKDIR /SpacePirates
WORKDIR /SpacePirates
RUN git fetch && git checkout cmake
RUN mkdir build
WORKDIR /SpacePirates/build
RUN cmake .. && make
