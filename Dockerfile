
FROM debian:stretch
LABEL maintainer "Hagen Paul Pfeifer <hagen@jauu.net>"

RUN set -x \
    && apt-get update \
		&& apt-get install -y wget python3-pip --no-install-recommends
		&& apt-get install -y gawk git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python python3 python3-pip python3-pexpect

RUN pip3 install --upgrade aiohttp

ADD yocto-fetcher.py /
ADD yocto-fetch.conf.py /

#RUN wget https://github.com/hgn/yocto-fetcher/archive/v0.1.tar.gz && \
#    tar zxvf v0.1.tar.gz
#RUN mv yocto-fetcher-0.1 yocto-fetcher

#WORKDIR yocto-fetcher

CMD [ "python3", "./yocto-fetcher.py", "-p", "11000" ]

EXPOSE 11000

