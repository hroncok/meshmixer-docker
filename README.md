MeshMixer in Docker
===================

This is a simple repo with a Makefile that will create and run MeshMixer in Docker.

To build the docker image, simply run `make`, to run MeshMixer, run `make run`.

[MeshMixer for Linux](http://www.meshmixer.com/linux.html) is currently only available for Ubuntu 14.04,
so if you are using anything better, you can run MeshMixer in Docker.

Note that if your user UID and/or GID is different than 1000, you'll have to edit the Dockerfile.

When running, your home directory is mounted inside the container for your convenience. However, this might be dangerous.

Feel free to report any issue related to what this little project does on GitHub.
Please, report any issues with MeshMixer itself on [their forum](http://meshmixer.com/forum/index.php?board=8.0).

![MeshMixer running on Fedora](screenshot.png)
