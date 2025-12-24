FROM alpine:latest

RUN apk add --no-cache curl unzip
WORKDIR /app

RUN curl -L https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip \
    -o xray.zip && unzip xray.zip && rm xray.zip

COPY config.json /app/config.json

EXPOSE 8080
CMD ["./xray", "run", "-config", "config.json"]






