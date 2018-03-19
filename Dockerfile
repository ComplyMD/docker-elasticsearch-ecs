FROM elasticsearch:2.4
RUN plugin install cloud-aws

RUN apt-get update && \
    apt-get install -y stunnel && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p /etc/stunnel
VOLUME /etc/stunnel

RUN mv /docker-entrypoint.sh /docker-entrypoint.elasticsearch.sh

COPY docker-entrypoint.sh /docker-entrypoint.sh
