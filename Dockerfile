FROM debian:bookworm-20231218-slim
WORKDIR "~"

COPY run.sh .
COPY install.sh .

RUN ./install.sh && rm install.sh

CMD ["./run.sh"]
