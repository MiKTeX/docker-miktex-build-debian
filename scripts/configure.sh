#!/bin/sh
package_revision=${1-1}
cd /miktex/build
cmake \
    -DMIKTEX_PACKAGE_REVISION=${package_revision} \
    -DMIKTEX_LINUX_DIST=debian \
    -DMIKTEX_LINUX_DIST_VERSION=11 \
    -DMIKTEX_LINUX_DIST_CODE_NAME=bullseye \
    -DQT_SERIES=5 \
    -DUSE_SYSTEM_HARFBUZZ=FALSE \
    -DUSE_SYSTEM_HARFBUZZ_ICU=FALSE \
    -DWITH_UI_QT=TRUE \
    /miktex/source
