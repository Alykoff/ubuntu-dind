### ubuntu-dind

build a container that's capable of running docker daemon (i.e. docker inside
docker)

#### How to make changes to the images

Change `Dockerfile.template` and `dind`. The changes will be reflected to all
images when running `make`

#### How to build

Run `make` will build and tag all ubuntu-dind images. Refer to `build.sh` to
see the build configuration that we used.
