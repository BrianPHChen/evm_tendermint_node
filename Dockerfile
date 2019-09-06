FROM golang:1.13
MAINTAINER Brian
WORKDIR /go/src/evm_tendermint_node/
COPY . /go/src/evm_tendermint_node/
RUN bash set_env.sh
EXPOSE 8080
EXPOSE 26657
ENTRYPOINT ["bash", "./entrypoint.sh"]