FROM        timonwong/prometheus-webhook-dingtalk:latest
MAINTAINER  sunnywalden <sunnywalden@gmail.com>

COPY prometheus-webhook-dingtalk  /bin/prometheus-webhook-dingtalk
COPY template/template.go        /usr/share/prometheus-webhook-dingtalk/template/template.go
COPY notifier/prometheus.go        /usr/share/prometheus-webhook-dingtalk/notifier/prometheus.go

EXPOSE      8060
ENTRYPOINT  [ "/bin/prometheus-webhook-dingtalk" ]
