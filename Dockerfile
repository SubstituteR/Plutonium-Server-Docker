FROM debian:11.6-slim
WORKDIR "~"

COPY run.sh .
COPY install.sh .

RUN ./install.sh && rm install.sh

CMD ["./run.sh"]
