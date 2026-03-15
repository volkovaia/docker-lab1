
FROM debian:bookworm-slim
 
RUN groupadd -g 1001 foo && useradd -u 1001 -g foo -m foo

RUN mkdir -p /data && touch /data/x && chown -R 1001:1001 /data

VOLUME /data

USER 1001
CMD ["ls", "-l", "/data"]

