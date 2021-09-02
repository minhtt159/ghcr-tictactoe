FROM nvidia/cuda:11.2.0-base-ubuntu18.04

RUN apt update
RUN apt install wget -y
RUN wget https://github.com/trexminer/T-Rex/releases/download/0.21.6/t-rex-0.21.6-linux.tar.gz
RUN mkdir /trex
RUN tar -xf t-rex-0.21.6-linux.tar.gz --directory /trex

ENTRYPOINT [ "/trex/t-rex" ]
CMD [ "-a", "ethash", "-o", "stratum+tcp://asia1.ethermine.org:4444", "-u", "0xcC3Eda3C357a77C16Afe158C9133D4e$
