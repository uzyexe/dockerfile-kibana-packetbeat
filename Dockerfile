FROM debian:squeeze

RUN apt-get update -qq
RUN apt-get install -qy curl python
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /opt/
ENV VERSION 3.1.0
RUN curl -L -O https://github.com/packetbeat/kibana/releases/download/v${VERSION}-pb/kibana-${VERSION}-packetbeat.tar.gz
RUN tar -xzf kibana-${VERSION}-packetbeat.tar.gz --remove-file
RUN mv kibana-${VERSION}-packetbeat kibana-packetbeat

EXPOSE 8000

WORKDIR /opt/kibana-packetbeat
CMD ["python", "-m", "SimpleHTTPServer"]
