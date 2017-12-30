FROM golang:1.8
MAINTAINER Ryota Katoh <ryota.katoh.lab@gmail.com>

ADD . /go/src/github.com/RyotaKatoh/gcp-example
WORKDIR /go/src/github.com/RyotaKatoh/gcp-example
RUN go install github.com/RyotaKatoh/gcp-example

ENTRYPOINT /go/bin/gcp-example

EXPOSE 3000
