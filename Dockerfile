FROM debian:11.7-slim
WORKDIR "~"

COPY run.sh .
COPY install.sh .

RUN ./install.sh && rm install.sh

CMD ["./run.sh"]
