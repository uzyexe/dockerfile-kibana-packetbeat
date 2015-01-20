FROM debian:squeeze

ENV VERSION 3.1.0

RUN apt-get update -qq && \
    apt-get install -qy curl python && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/* && \
    cd /opt && \
    curl -L -O https://github.com/packetbeat/kibana/releases/download/v${VERSION}-pb/kibana-${VERSION}-packetbeat.tar.gz && \
    tar -xzf kibana-${VERSION}-packetbeat.tar.gz --remove-file && \
    mv kibana-${VERSION}-packetbeat kibana-packetbeat

EXPOSE 8000

WORKDIR /opt/kibana-packetbeat

CMD ["python", "-m", "SimpleHTTPServer"]
