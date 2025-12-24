FROM ghcr.io/xtls/xray-core:latest
COPY config.json /config.json
EXPOSE 8080
CMD ["xray", "run", "-config", "/config.json"]

