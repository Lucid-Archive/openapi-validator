FROM jamescooke/openapi-validator:v0.17.1

COPY config.json /config/

ENTRYPOINT ["lint-openapi", "--config", "/config/config.json"]
