set -e
TAG=try_overmind
cd $(dirname $0)
DOCKER_BUILDKIT=1 docker build -t $TAG . -f Dockerfile.overmind
docker run -it -p 5000:5000 --name $TAG $TAG

