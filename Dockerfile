FROM debian:bookworm

LABEL Description="MiKTeX build environment, Debian 12 (bookworm)" Vendor="Christian Schenk" Version="23.12.30"

RUN \
    apt-get update; \
    apt-get install -y --no-install-recommends \
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
        qt6-5compat-dev \
        qt6-base-dev \
        qt6-declarative-dev \
        qt6-tools-dev \
        xsltproc \
        xz-utils

RUN mkdir /miktex
WORKDIR /miktex

COPY scripts/*.sh /miktex/
COPY entrypoint.sh /miktex/

ENTRYPOINT ["/miktex/entrypoint.sh"]
CMD ["/miktex/make-package.sh"]
