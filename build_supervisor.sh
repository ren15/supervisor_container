set -e
# VERSION=0.1
# REPO=805502511933.dkr.ecr.ap-northeast-1.amazonaws.com
# TAG=$REPO/flask_qs:$VERSION
TAG=try_supervisor
cd $(dirname $0)
DOCKER_BUILDKIT=1 docker build -t $TAG . -f Dockerfile.supervisor
# docker push $TAG
docker run -it -p 5000:5000 --name try_supervisor try_supervisor

