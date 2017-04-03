# xlr_dev_compile #

Docker image that has XLR installed, mounts your source code and executes compilation using gradle wrapper.

Supported tags

+ `latest`, `v6.2.0.1`
+ `v6.1.0.1`
+ `v6.0.0.1`
+ `v5.0.1.11`

# Starting #

```
docker run -v [PROJECT_DIR]:/data -v /home/username/.xlgradle:/root/.gradle xebialabs/xlr_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
