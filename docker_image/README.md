## Preparing the Docker image

### Prerequisites:
 - Docker
 - DockerHub ID

### Customize the configuration files

- Customize the `Dockerfile`, if required
- Customize the `requirements.txt` file, if required

### Build and publish the Docker image

Run the Docker image build and publication commands, replacing `xai`, `latest`, and `ptitzler` as appropriate. `IMG_NAME` is the desired Docker image name, `IMG_TAG` the desired Docker image tag, and `DOCKER_OR_ORG_ID` the Docker user ID or org ID which will own the image on DockerHub.

```
$ IMG_NAME=xai IMG_TAG=latest ./build_docker_image.sh
$ IMG_NAME=xai IMG_TAG=latest DOCKER_OR_ORG_ID=ptitzler ./publish_docker_image.sh
```