FROM jamescooke/openapi-validator:v0.18.0

COPY config.json /config/

ENTRYPOINT ["lint-openapi", "--config", "/config/config.json"]
