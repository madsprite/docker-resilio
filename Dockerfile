# BitTorrent Sync
# Downloads Latest Stable

FROM alpine:3.4

MAINTAINER MadSprite <contactme@madsprite.com>

# Download and extract the executable to /usr/bin
ADD https://download-cdn.resilio.com/stable/linux-arm/resilio-sync_arm.tar.gz /usr/bin/resilio-sync.tar.gz
RUN cd /usr/bin && tar -xzvf resilio-sync.tar.gz && rm resilio-sync.tar.gz

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

ENTRYPOINT ["rslsync"]
CMD ["--webui.listen", "0.0.0.0:8888", "--nodaemon"]