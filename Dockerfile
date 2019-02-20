FROM        timonwong/prometheus-webhook-dingtalk:latest

MAINTAINER  sunnywalden <sunnywalden@gmail.com>

ENV WEBHOOK_PATH /usr/share/prometheus-webhook-dingtalk

ENV BIN_PATH /bin

COPY prometheus-webhook-dingtalk $BIN_PATH

COPY template $WEBHOOK_PATH/template/

COPY notifier $WEBHOOK_PATH/notifier/

EXPOSE      8060
ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
