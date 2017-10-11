# xlr_dev_compile #

Docker image that has XLR installed, mounts your source code and executes compilation using gradle wrapper.

## Badges ##
[![Docker Stars](https://img.shields.io/docker/stars/xebialabs/xlr_dev_compile.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/xebialabs/xlr_dev_compile.svg)]()
[![Docker Automated buil](https://img.shields.io/docker/automated/xebialabs/xlr_dev_compile.svg)]()
[![Docker Build Status](https://img.shields.io/docker/build/xebialabs/xlr_dev_compile.svg)]()

## Supported tags ##

+ `latest`, `v7.2.0.2`
+ `v7.2.0.1`
+ `v7.1.0.4`
+ `v7.1.0.2`
+ `v7.1.0.1`
+ `v7.0.1.2`
+ `v7.0.0.1`
+ `v6.2.0.1`
+ `v6.0.0.1`
+ `v5.0.1.11`

## Starting ##

```
docker run -v [PROJECT_DIR]:/data -v /home/username/.xlgradle:/root/.gradle xebialabs/xlr_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
