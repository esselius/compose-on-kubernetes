FROM golang:1.10.5-stretch

ENV USER_ID 1000
ENV GROUP_ID 1000

RUN mkdir /storage

RUN go get sigs.k8s.io/kind && \
  go get github.com/docker/cli/cmd/docker

ENV CLUSTER_NAME testing
ENV KUBE_VERSION 1.11.5

COPY main.sh /root/main.sh

CMD ["sh", "/root/main.sh"]
