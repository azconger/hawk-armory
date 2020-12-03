FROM stackhawk/hawkscan:latest

USER root

COPY runshawk.sh /zap/

WORKDIR /zap
USER zap

ENTRYPOINT ["./runshawk.sh"]
