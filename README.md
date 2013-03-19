# archconf

This is both, an experiment and a try to learn how the Arch packaging system works.
The purpose is to centralize my Arch preferences in a repo, so I can
setup an Arch installation with just a few steps.

## Setting up

First of all, you need to share this repository through some web server,
then add the new repo to pacman.conf:

```bash
[custom]
#SigLevel = Optional TrustAll
Server = $BASE_URL/repo/custom/any
```

and execute the install script:

```bash
$ curl $BASE_URL/installer/install | bash -s
```
