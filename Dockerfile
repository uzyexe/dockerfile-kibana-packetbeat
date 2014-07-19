FROM dockerfile/ubuntu
MAINTAINER Shuji Yamada "uzy.exe@gmail.com"

RUN sudo apt-get install -qy curl python

WORKDIR /opt/
ENV VERSION 3.1.0
RUN curl -L -O https://github.com/packetbeat/kibana/releases/download/v${VERSION}-pb/kibana-${VERSION}-packetbeat.tar.gz
RUN tar -xzf kibana-${VERSION}-packetbeat.tar.gz
RUN rm -f kibana-${VERSION}-packetbeat.tar.gz
RUN mv kibana-${VERSION}-packetbeat kibana-packetbeat

EXPOSE 8000

WORKDIR /opt/kibana-packetbeat
CMD ["python", "-m", "SimpleHTTPServer"]
