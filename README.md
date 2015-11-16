# activemq

To build this image
```bash
./build.bash
```

To start this image for the first time
```bash
./startactivemq.bash
```

To stop this image, first determine the container id or the name by `docker ps` the gives
a list with runnen docker images, for example:

	$ docker ps
	CONTAINER ID IMAGE                     COMMAND        CREATED        STATUS       PORTS                                            NAMES
	8f6c54f742c7 dockerpinguin/activemq:v1 "/activemq.sh" 10 seconds ago Up 8 seconds 0.0.0.0:8161->8161/tcp, 0.0.0.0:61616->61616/tcp adoring_kirch       

The name of the activemq docker image is adoring_kirch. To stop this image type
```bash
docker stop adoring_kirch
```

To restart the image type
```bash
docker start adoring_kirch
```

Access to the activemq console by [localhost:8161](http://localhost:8161/)


