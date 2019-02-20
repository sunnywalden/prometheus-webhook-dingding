FROM timonwong/prometheus-webhook-dingtalk:latest

MAINTAINER sunnywalden <sunnywalden@gmail.com>

COPY webhook_dingding /bin

ENV WEBHOOK_PATH /usr/share/prometheus-webhook-dingtalk

COPY template $WEBHOOK_PATH/

COPY notifier $WEBHOOK_PATH/

EXPOSE      8060

ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
