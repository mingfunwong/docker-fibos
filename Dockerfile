FROM ubuntu:16.04

RUN apt-get update -y \
  && apt-get install -y curl sudo openssl libusb-1.0-0
