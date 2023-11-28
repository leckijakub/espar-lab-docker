FROM erichough/nfs-server

# http://forum.alpinelinux.org/apk/main/x86_64/tftp-hpa
RUN apk add --update --no-cache tftp-hpa

# tftpd port
EXPOSE 69/udp

ENV NETBOOT_IMAGE=/srv/netboot/beacon_root.img
ENV NETBOOT_DIR=/srv/nfs/exports/beacon_root
ENV TFTPD_BIND_ADDRESS="0.0.0.0:69"

RUN adduser -D tftp
USER root

COPY ./entrypoint.sh /usr/bin
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
