FROM debian:bullseye-20230502-slim
WORKDIR "~"

COPY run.sh .
COPY install.sh .

RUN ./install.sh && rm install.sh

CMD ["./run.sh"]
