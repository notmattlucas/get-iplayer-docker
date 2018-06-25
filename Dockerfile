FROM ubuntu:17.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install perl ffmpeg atomicparsley git make libxml-libxml-perl php && \
    git clone https://github.com/get-iplayer/get_iplayer.git && \
    cpan JSON:PP && \
    cpan LWP && \
    cpan Mojolicious && \
    cpan XML::Simple && \
    cpan HTML::Entities && \
    cpan LWP::ConnCache && \
    ln -s /get_iplayer/get_iplayer /usr/bin/get_iplayer && \
    mkdir /downloads

WORKDIR /downloads

COPY download.sh /usr/bin/download.sh

RUN chmod 755 /usr/bin/download.sh

ENTRYPOINT ["download.sh"]
