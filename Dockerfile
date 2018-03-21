FROM alpine:3.7

ENV node_exporter_version 0.15.2

RUN apk update \
    && apk add --no-cache curl tar \
    && curl -LO https://github.com/prometheus/node_exporter/releases/download/v${node_exporter_version}/node_exporter-${node_exporter_version}.linux-amd64.tar.gz \
    && tar -xvzf node_exporter-${node_exporter_version}.linux-amd64.tar.gz  \
    && mv node_exporter-${node_exporter_version}.linux-amd64/node_exporter /bin/
    && apk del --purge curl tar

ENTRYPOINT ["/bin/node_exporter",         \
            "--path.procfs", "/host/proc" \ 
            "--path.sysfs",  "/host/proc" \
            "--collector.filesystem.ignored-mount-points", "\"^/(sys|proc|dev|host|etc)($|/)\""]
            
EXPOSE 9091
