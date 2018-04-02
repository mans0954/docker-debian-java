FROM debian:sid

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential

RUN apt-get install -y maven-debian-helper

RUN apt-get install -y aptitude

RUN aptitude -y  install "~n ^lib.*-java$"

RUN apt-get install -y apt-file licensecheck

RUN apt-file update

RUN apt-get install -y devscripts

RUN mkdir /src

WORKDIR /src
