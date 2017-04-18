
FROM debian:stretch
LABEL maintainer "Hagen Paul Pfeifer <hagen@jauu.net>"

RUN set -x \
    && apt-get update \
		&& apt-get install -y python3-pip --no-install-recommends

RUN pip3 install --upgrade aiohttp

ENTRYPOINT	[ "/usr/bin/virtualbox" ]
