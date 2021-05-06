## Build base image

```
ant -f build-base.xml -DTAG=v0.0.3
```

## Build app image

```
ant -f build.xml -Denv=production -DTAG=0.0.1
```

Tag image to latest

```
ant -f build-tag-latest.xml -DTAG=0.0.1
```
