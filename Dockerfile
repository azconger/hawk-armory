FROM stackhawk/hawkscan:latest

USER root

RUN apt-get update && \
	apt-get install -q -y --fix-missing --no-install-recommends \
        tar \
        jq

COPY runshawk.sh /zap/

WORKDIR /zap
USER zap

ENTRYPOINT ["./runshawk.sh"]
