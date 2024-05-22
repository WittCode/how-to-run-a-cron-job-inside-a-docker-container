FROM ubuntu:24.04
COPY crontab /etc/cron.d/my-cron
RUN chmod 644 /etc/cron.d/my-cron
RUN apt update
RUN apt install -y cron
ENTRYPOINT cron -f