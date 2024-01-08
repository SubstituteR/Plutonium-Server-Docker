FROM debian:bullseye-20231120-slim
WORKDIR "~"

COPY run.sh .
COPY install.sh .

RUN ./install.sh && rm install.sh

CMD ["./run.sh"]
