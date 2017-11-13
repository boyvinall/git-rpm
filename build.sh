#!/bin/bash -x

REPO=$1
SPECFILE=$2

cd /root/rpmbuild/SOURCES
git init .
git pull $REPO
spectool -g -R $SPECFILE
rpmbuild -ba $SPECFILE
