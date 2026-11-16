#!/bin/sh
package_revision=${1-1}
cd /miktex/build
cmake \
    -DMIKTEX_PACKAGE_REVISION=${package_revision} \
    -DMIKTEX_LINUX_DIST=debian \
    -DMIKTEX_LINUX_DIST_VERSION=13 \
    -DMIKTEX_LINUX_DIST_CODE_NAME=trixie \
    -DWITH_UI_QT=TRUE \
    /miktex/source
