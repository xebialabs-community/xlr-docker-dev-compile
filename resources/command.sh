#!/usr/bin/env sh
set -e
mkdir /build
cp -r /data/* /build

cd /build/
if ./gradlew tasks | grep 'copyDownloadResources'; then 
	./gradlew clean copyDownloadResources
fi

# Copy downloads into 'plugins'
if [ -d "/data/build/downloads/plugins" ]; then
    cp /build/build/downloads/plugins/* /opt/xlr/server/plugins
fi

# Compile plugin
cd /build/
./gradlew test assemble -PxlReleaseHome=/opt/xlr/server
cp -rf /build/build/. /data/build