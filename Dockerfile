FROM ubuntu:18.04

RUN apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y \
 libupnp-dev \
 libgstreamer1.0-dev \
 gstreamer1.0-plugins-base \
 gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad \
 gstreamer1.0-plugins-ugly \
 gstreamer1.0-alsa \
 gstreamer1.0-libav



COPY dlna-render.sh /dlna-render.sh
COPY gmediarender /usr/bin/gmediarender
COPY grender-64x64.png /usr/local/share/gmediarender/grender-64x64.png
COPY grender-128x128.png /usr/local/share/gmediarender/grender-128x128.png
RUN apt-get clean && rm -rf /var/lib/apt/lists

ENTRYPOINT [ "/dlna-render.sh" ]
