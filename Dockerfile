FROM nvidia/cuda:11.3.0-base-ubuntu18.04

RUN apt update
RUN apt install wget -y
RUN wget https://trex-miner.com/download/t-rex-0.21.6-linux.tar.gz
RUN mkdir /trex
RUN tar -xf t-rex-0.21.6-linux.tar.gz --directory /trex
RUN cd /trex

ENTRYPOINT [ "/trex/t-rex" ]
CMD [ "-a", "ethash", "-o", "stratum+tcp://eu1.ethermine.org:4444", "-u", "0xcC3Eda3C357a77C16Afe158C9133D4eEfCeb52AA", "-p", "x"]