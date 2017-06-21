FROM debian:stretch

LABEL Description="MiKTeX build environment, Debian 9" Vendor="Christian Schenk" Version="2.9.6381"

RUN apt-get update

RUN apt-get install -y bison
RUN apt-get install -y cmake
RUN apt-get install -y curl
RUN apt-get install -y dpkg-dev
RUN apt-get install -y flex
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y xsltproc
RUN apt-get install -y xz-utils

RUN apt-get install -y libbz2-dev
RUN apt-get install -y libcairo2-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libfribidi-dev
RUN apt-get install -y libgd-dev
RUN apt-get install -y libgmp-dev
RUN apt-get install -y libgraphite2-dev
RUN apt-get install -y libharfbuzz-dev
RUN apt-get install -y libhunspell-dev
RUN apt-get install -y libicu-dev
RUN apt-get install -y liblog4cxx10-dev
RUN apt-get install -y libmpfr-dev
RUN apt-get install -y libmspack-dev
RUN apt-get install -y libpoppler-dev
RUN apt-get install -y libpoppler-private-dev
RUN apt-get install -y libpopt-dev
RUN apt-get install -y libpotrace-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y liburiparser-dev
RUN apt-get install -y libzzip-dev

RUN mkdir /miktex
ADD scripts/*.sh /miktex/

WORKDIR /miktex

CMD ["/miktex/make-package.sh"]
