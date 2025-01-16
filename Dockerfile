FROM ghcr.io/xerberusteam/xerberus-node:full-node-latest
RUN apt-get update && apt-get install -y tini
RUN chmod +x /usr/bin/xerberus-net
ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
