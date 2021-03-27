docker kill pintos && docker rm pintos
docker build --tag pintos:latest .
docker run -dt --name pintos pintos:latest
docker exec -it pintos bash

