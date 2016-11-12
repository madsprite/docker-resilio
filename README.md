# docker-resilio
This is a automated docker container that will download the latest Bittorrent Sync Resilio app and run under the alpine base image.

Run:
```
docker run --restart=always -d -p 8888:8888 \
-p 55555:55555 -v /data/resilio/:/resilio/ \
--name resilio resilio
```
Data will be saved in /data/resilio unless changed, this is to allow persistance with your files. Configs and application still remain in the container and will not be saved in an event of a wipe.

MIT License