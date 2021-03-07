FROM debian:buster

LABEL Description="MiKTeX build environment, Debian experimental" Vendor="Christian Schenk" Version="21.3"

RUN    apt-get update \
    && apt-get install -y --no-install-recommends \
           bison \
           ca-certificates \
           cmake \
           curl \
           dpkg-dev \
           file \
           flex \
           g++ \
           gettext \
           gcc \
           git \
           gosu \
           libboost-locale-dev \
           libbz2-dev \
           libcairo2-dev \
           libcurl4-openssl-dev \
           libfribidi-dev \
           libgd-dev \
           libgmp-dev \
           libgraphite2-dev \
           libhunspell-dev \
           libicu-dev \
           liblog4cxx-dev \
           libmpfr-dev \
           libmspack-dev \
           libpopt-dev \
           libpotrace-dev \
           libssl-dev \
           liburiparser-dev \
           libzzip-dev \
           make \
           qtbase5-dev \
           qtdeclarative5-dev \
           qtscript5-dev \
           qttools5-dev \
           xsltproc \
           xz-utils

RUN mkdir /miktex
WORKDIR /miktex

COPY scripts/*.sh /miktex/
COPY entrypoint.sh /miktex/

ENTRYPOINT ["/miktex/entrypoint.sh"]
CMD ["/miktex/make-package.sh"]
