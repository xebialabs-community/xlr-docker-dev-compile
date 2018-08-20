#!/usr/bin/env sh
set -e
mkdir /build
cp -r /data/* /build

cd /build/
if ./gradlew tasks --all | grep 'copyDownloadResources'; then 
	./gradlew clean copyDownloadResources
fi

# Copy downloads into 'plugins'
if [ -d "/data/build/downloads/plugins" ]; then
    cp /build/build/downloads/plugins/* /opt/xl-release-server/plugins/__local__
fi

# Compile plugin
cd /build/
./gradlew test assemble -PxlReleaseHome=/opt/xl-release-server
cp -rf /build/build/. /data/build