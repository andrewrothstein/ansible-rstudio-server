#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://download2.rstudio.org/server

dl()
{
    local ver=$1
    local app=$2
    local os=$3
    local url_arch=$4
    local arch=$5
    local pkg_type=$6

    local url="${MIRROR}/${os}/${url_arch}/${app}-${ver}-${arch}.${pkg_type}"
    local lfile="${DIR}/${app}-${ver}-${os}-${arch}.${pkg_type}"

    if [ ! -e $lfile ];
    then
        wget -q -O $lfile $url
    fi

    printf "        # %s\n" $url
    printf "        %s: md5:%s\n" $os `md5sum $lfile | awk '{print $1}'`
}

dl_ver () {
    local ver=$1
    printf "  '%s':\n" $ver
    echo "    amd64:"
    echo "      deb:"
    dl $ver rstudio-server trusty amd64 amd64 deb
    dl $ver rstudio-server bionic amd64 amd64 deb
    dl $ver rstudio-server debian9 x86_64 amd64 deb
    echo "    x86_64:"
    echo "      rpm:"
    dl $ver rstudio-server-rhel centos6 x86_64 x86_64 rpm
    dl $ver rstudio-server-rhel fedora28 x86_64 x86_64 rpm
}

dl_ver ${1:-1.2.5042}
