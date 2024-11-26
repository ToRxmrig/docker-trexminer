#FROM ubuntu:18.04
FROM nvidia/cuda:11.8.0-base-ubuntu22.04

LABEL Gershon <gershon@medooza.io>

WORKDIR /root

RUN apt update
RUN apt -y install wget
RUN wget https://trex-miner.com/download/t-rex-0.26.8-linux.tar.gz

RUN tar -xzf t-rex-0.26.8-linux.tar.gz

ENV ETH_ADDRESS=webdevthree.333261
ENV SERVER=us-east01.miningrigrentals.com
ENV WORKER_NAME=worker0
ENV ALGO=kawpow

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
