#!/usr/bin/env sh
VER=1.2.1335
DIR=~/Downloads
MIRROR=https://download2.rstudio.org/server

dl()
{
    APP=$1
    OS=$2
    URLARCH=$3
    ARCH=$4
    PKGTYPE=$5

    FILE=${APP}-${VER}-${ARCH}.${PKGTYPE}
    LFILENAME=${APP}-${VER}-${OS}-${ARCH}.${PKGTYPE}
    URL=$MIRROR/$OS/$URLARCH/$FILE
    LFILE=$DIR/$LFILENAME

    if [ ! -e $LFILE ];
    then
        wget -q -O $LFILE $URL
    fi

    printf "        # %s\n" $URL
    printf "        %s: md5:%s\n" $OS `md5sum $LFILE | awk '{print $1}'`
}

printf "  '%s':\n" $VER
echo "    amd64:"
echo "      deb:"
dl rstudio-server trusty amd64 amd64 deb
dl rstudio-server bionic amd64 amd64 deb
dl rstudio-server debian9 x86_64 amd64 deb
echo "    x86_64:"
echo "      rpm:"
dl rstudio-server-rhel centos6 x86_64 x86_64 rpm
