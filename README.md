Build
=====

```
docker build . --tag debian-java
```

Run
===

```
docker run -ti -e DEBFULLNAME="John Doe" -e DEBEMAIL="john.doe@where.no" -v `pwd`:/src debian-java mh_make -n --package=<packagename> --run-tests=false --javadoc=false
```
