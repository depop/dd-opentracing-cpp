FROM debian:stretch

RUN apt-get update
RUN apt-get -y install build-essential cmake wget

COPY build.sh /

CMD /build.sh
