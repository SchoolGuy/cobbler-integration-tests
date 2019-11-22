FROM opensuse/leap:15.1

WORKDIR /server
COPY scripts/setup-server.sh /server

VOLUME [ "/sys/fs/cgroup" ]

RUN ["/bin/bash", "-c", "/server/setup-server.sh"]

# Set this as an entrypoint
CMD ["/usr/lib/systemd/systemd", "--system"]
