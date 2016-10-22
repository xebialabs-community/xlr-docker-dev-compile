# xlr_dev_compile #

Docker image that has XLR installed, mounts your source code and executes compilation using gradle wrapper.

# Starting #

```
docker run -v [PROJECT_DIR]:/data -v /home/username/.xlgradle:/root/.gradle xebialabs/xlr_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
