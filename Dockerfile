FROM        timonwong/prometheus-webhook-dingtalk:latest

MAINTAINER  sunnywalden <sunnywalden@gmail.com>

COPY prometheus-webhook-dingtalk  /bin/

COPY template/template.go        /usr/share/prometheus-webhook-dingtalk/template/

COPY notifier/prometheus.go        /usr/share/prometheus-webhook-dingtalk/notifier/

EXPOSE      8060
ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
