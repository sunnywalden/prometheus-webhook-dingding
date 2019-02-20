FROM timonwong/prometheus-webhook-dingtalk:latest

MAINTAINER sunnywalden <sunnywalden@gmail.com>

ENV BIN_PATH /bin

ADD prometheus-webhook-dingtalk $BIN_PATH

ENV WEBHOOK_PATH /usr/share/prometheus-webhook-dingtalk

COPY template $WEBHOOK_PATH/

COPY notifier $WEBHOOK_PATH/

EXPOSE      8060

ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
