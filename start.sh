#!/bin/sh

set +x
set -e
set -o pipefail

docker build --tag nc_webdav_ubuntu_2004 webdav_ubuntu_2004
#docker create --name nc_webdav_ubuntu_2004 -p 127.0.0.1:9080:80 nc_webdav_ubuntu_2004
docker create --name nc_webdav_ubuntu_2004 -p 9080:80 nc_webdav_ubuntu_2004
docker start nc_webdav_ubuntu_2004
